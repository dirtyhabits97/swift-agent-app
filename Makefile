SUPPORTFILES=./SupportFiles
PLATFORM=x86_64-apple-macosx
BUILD_DIRECTORY=./.build/${PLATFORM}/debug
APP_DIRECTORY=./SwiftAgent.app
CFBUNDLEEXECUTABLE=swift-agent-app

install: build copySupportFiles

build:
	swift build

copySupportFiles:
	mkdir -p ${APP_DIRECTORY}/Contents/MacOS && \
	cp ${SUPPORTFILES}/Info.plist ${APP_DIRECTORY}/Contents && \
	cp ${BUILD_DIRECTORY}/${CFBUNDLEEXECUTABLE} ${APP_DIRECTORY}/Contents/MacOS/

run: install
	open ${APP_DIRECTORY}

clean:
	rm -rf .build
	rm -rf ${APP_DIRECTORY}

.PHONY: run build copySupportFiles clean
