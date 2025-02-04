/// GENERATED BY testcase_gen. DO NOT MODIFY BY HAND.

// ignore_for_file: deprecated_member_use,constant_identifier_names

import 'dart:async';
import 'dart:typed_data';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iris_tester/iris_tester.dart';
import 'package:agora_rtc_engine/src/impl/api_caller.dart';

void generatedTestCases() {
  testWidgets(
    'onCaptureVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onCaptureVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onCaptureVideoFrame: (VideoFrame videoFrame) {
          onCaptureVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent('VideoFrameObserver_onCaptureVideoFrame',
            params: eventJson);
      }

      final eventCalled = await onCaptureVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onPreEncodeVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onPreEncodeVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onPreEncodeVideoFrame: (VideoFrame videoFrame) {
          onPreEncodeVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent('VideoFrameObserver_onPreEncodeVideoFrame',
            params: eventJson);
      }

      final eventCalled = await onPreEncodeVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onSecondaryCameraCaptureVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onSecondaryCameraCaptureVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onSecondaryCameraCaptureVideoFrame: (VideoFrame videoFrame) {
          onSecondaryCameraCaptureVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent(
            'VideoFrameObserver_onSecondaryCameraCaptureVideoFrame',
            params: eventJson);
      }

      final eventCalled =
          await onSecondaryCameraCaptureVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onSecondaryPreEncodeCameraVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onSecondaryPreEncodeCameraVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onSecondaryPreEncodeCameraVideoFrame: (VideoFrame videoFrame) {
          onSecondaryPreEncodeCameraVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent(
            'VideoFrameObserver_onSecondaryPreEncodeCameraVideoFrame',
            params: eventJson);
      }

      final eventCalled =
          await onSecondaryPreEncodeCameraVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onScreenCaptureVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onScreenCaptureVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onScreenCaptureVideoFrame: (VideoFrame videoFrame) {
          onScreenCaptureVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent('VideoFrameObserver_onScreenCaptureVideoFrame',
            params: eventJson);
      }

      final eventCalled = await onScreenCaptureVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onPreEncodeScreenVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onPreEncodeScreenVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onPreEncodeScreenVideoFrame: (VideoFrame videoFrame) {
          onPreEncodeScreenVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent('VideoFrameObserver_onPreEncodeScreenVideoFrame',
            params: eventJson);
      }

      final eventCalled = await onPreEncodeScreenVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onMediaPlayerVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onMediaPlayerVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onMediaPlayerVideoFrame: (VideoFrame videoFrame, int mediaPlayerId) {
          onMediaPlayerVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );
        const int mediaPlayerId = 10;

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
          'mediaPlayerId': mediaPlayerId,
        };

        irisTester.fireEvent('VideoFrameObserver_onMediaPlayerVideoFrame',
            params: eventJson);
      }

      final eventCalled = await onMediaPlayerVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onSecondaryScreenCaptureVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onSecondaryScreenCaptureVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onSecondaryScreenCaptureVideoFrame: (VideoFrame videoFrame) {
          onSecondaryScreenCaptureVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent(
            'VideoFrameObserver_onSecondaryScreenCaptureVideoFrame',
            params: eventJson);
      }

      final eventCalled =
          await onSecondaryScreenCaptureVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onSecondaryPreEncodeScreenVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onSecondaryPreEncodeScreenVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onSecondaryPreEncodeScreenVideoFrame: (VideoFrame videoFrame) {
          onSecondaryPreEncodeScreenVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent(
            'VideoFrameObserver_onSecondaryPreEncodeScreenVideoFrame',
            params: eventJson);
      }

      final eventCalled =
          await onSecondaryPreEncodeScreenVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onRenderVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onRenderVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onRenderVideoFrame:
            (String channelId, int remoteUid, VideoFrame videoFrame) {
          onRenderVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const String channelId = "hello";
        const int remoteUid = 10;
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'channelId': channelId,
          'remoteUid': remoteUid,
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent('VideoFrameObserver_onRenderVideoFrame',
            params: eventJson);
      }

      final eventCalled = await onRenderVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onTranscodedVideoFrame',
    (WidgetTester tester) async {
      final irisTester = IrisTester();
      final debugApiEngineIntPtr = irisTester.getDebugApiEngineNativeHandle();
      setMockIrisApiEngineIntPtr(debugApiEngineIntPtr);

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));
      final mediaEngine = rtcEngine.getMediaEngine();

      final onTranscodedVideoFrameCompleter = Completer<bool>();
      final theVideoFrameObserver = VideoFrameObserver(
        onTranscodedVideoFrame: (VideoFrame videoFrame) {
          onTranscodedVideoFrameCompleter.complete(true);
        },
      );

      mediaEngine.registerVideoFrameObserver(
        theVideoFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const VideoPixelFormat videoFrameType =
            VideoPixelFormat.videoPixelDefault;
        const int videoFrameWidth = 10;
        const int videoFrameHeight = 10;
        const int videoFrameYStride = 10;
        const int videoFrameUStride = 10;
        const int videoFrameVStride = 10;
        Uint8List videoFrameYBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameUBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        Uint8List videoFrameVBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameRotation = 10;
        const int videoFrameRenderTimeMs = 10;
        const int videoFrameAvsyncType = 10;
        Uint8List videoFrameMetadataBuffer =
            Uint8List.fromList([1, 2, 3, 4, 5]);
        const int videoFrameMetadataSize = 10;
        const int videoFrameTextureId = 10;
        const List<double> videoFrameMatrix = [];
        Uint8List videoFrameAlphaBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        final VideoFrame videoFrame = VideoFrame(
          type: videoFrameType,
          width: videoFrameWidth,
          height: videoFrameHeight,
          yStride: videoFrameYStride,
          uStride: videoFrameUStride,
          vStride: videoFrameVStride,
          yBuffer: videoFrameYBuffer,
          uBuffer: videoFrameUBuffer,
          vBuffer: videoFrameVBuffer,
          rotation: videoFrameRotation,
          renderTimeMs: videoFrameRenderTimeMs,
          avsyncType: videoFrameAvsyncType,
          metadataBuffer: videoFrameMetadataBuffer,
          metadataSize: videoFrameMetadataSize,
          textureId: videoFrameTextureId,
          matrix: videoFrameMatrix,
          alphaBuffer: videoFrameAlphaBuffer,
        );

        final eventJson = {
          'videoFrame': videoFrame.toJson(),
        };

        irisTester.fireEvent('VideoFrameObserver_onTranscodedVideoFrame',
            params: eventJson);
      }

      final eventCalled = await onTranscodedVideoFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaEngine.unregisterVideoFrameObserver(
          theVideoFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterVideoFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );
}

