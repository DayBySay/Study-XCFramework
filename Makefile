PROJECT_DIR:=.
CONFIGURATION?=Release
OUTPUT_DIR:=${PROJECT_DIR}/Output
ARCHIVE_DIR:=${OUTPUT_DIR}/${CONFIGURATION}-archive
XCFRAMEWORK_DIR:=${OUTPUT_DIR}/${CONFIGURATION}-xcframework
ARCHIVE_FILE_IOS:=${ARCHIVE_DIR}/ios.xcarchive
ARCHIVE_FILE_IOS_SIMULATOR:=${ARCHIVE_DIR}/iossimulator.xcarchive
PROJECT_NAME:=Study-XCFramework
OUTPUT_PROJECT_NAME:=Study_XCFramework

PHONY=install clean

install:
	bundle install --path=vendor/bundle
	make build

build: prepare-build archive-ios-device archive-ios-simulator build-xcframework

prepare-build:
	rm -rf ${OUTPUT_DIR}

archive-ios-device:
	set -o pipefail \
		&& xcodebuild archive \
		-project ${PROJECT_NAME}.xcodeproj \
		-scheme ${PROJECT_NAME} \
		-configuration ${CONFIGURATION} \
		-destination="iOS" \
		-archivePath ${ARCHIVE_FILE_IOS} \
		-sdk iphoneos \
		SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
		| bundle exec xcpretty

archive-ios-simulator:
	set -o pipefail \
		&& xcodebuild archive \
		-project ${PROJECT_NAME}.xcodeproj \
		-scheme ${PROJECT_NAME} \
		-configuration ${CONFIGURATION} \
		-destination="iOS Simulator" \
		-archivePath ${ARCHIVE_FILE_IOS_SIMULATOR} \
		-sdk iphonesimulator \
		SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
		| bundle exec xcpretty

build-xcframework:
	set -o pipefail \
		&& xcodebuild \
		-create-xcframework \
		-framework ${ARCHIVE_FILE_IOS}/Products/Library/Frameworks/${OUTPUT_PROJECT_NAME}.framework \
		-framework ${ARCHIVE_FILE_IOS_SIMULATOR}/Products/Library/Frameworks/${OUTPUT_PROJECT_NAME}.framework \
		-output ${XCFRAMEWORK_DIR}/${OUTPUT_PROJECT_NAME}.xcframework \
		| bundle exec xcpretty

clean:
	rm -rf Output
