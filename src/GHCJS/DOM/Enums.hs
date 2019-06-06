{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI            #-}
{-# LANGUAGE PatternSynonyms          #-}
-- For HasCallStack compatibility
{-# LANGUAGE ConstraintKinds          #-}
{-# LANGUAGE ImplicitParams           #-}
{-# LANGUAGE KindSignatures           #-}
module GHCJS.DOM.Enums
       (KeyType(..), PToJSVal, ToJSVal, PFromJSVal, FromJSVal,
        js_KeyTypePublic, js_KeyTypePrivate, js_KeyTypeSecret,
        CryptoKeyUsage(..), js_CryptoKeyUsageEncrypt,
        js_CryptoKeyUsageDecrypt, js_CryptoKeyUsageSign,
        js_CryptoKeyUsageVerify, js_CryptoKeyUsageDeriveKey,
        js_CryptoKeyUsageDeriveBits, js_CryptoKeyUsageWrapKey,
        js_CryptoKeyUsageUnwrapKey, KeyFormat(..), js_KeyFormatRaw,
        js_KeyFormatSpki, js_KeyFormatPkcs8, js_KeyFormatJwk,
        FontFaceLoadStatus(..), js_FontFaceLoadStatusUnloaded,
        js_FontFaceLoadStatusLoading, js_FontFaceLoadStatusLoaded,
        js_FontFaceLoadStatusError, FontFaceSetLoadStatus(..),
        js_FontFaceSetLoadStatusLoading, js_FontFaceSetLoadStatusLoaded,
        VisibilityState(..), js_VisibilityStateHidden,
        js_VisibilityStateVisible, js_VisibilityStatePrerender,
        DocumentReadyState(..), js_DocumentReadyStateLoading,
        js_DocumentReadyStateInteractive, js_DocumentReadyStateComplete,
        ShadowRootMode(..), js_ShadowRootModeUserAgent,
        js_ShadowRootModeClosed, js_ShadowRootModeOpen,
        BlobLineEndings(..), js_BlobLineEndingsTransparent,
        js_BlobLineEndingsNative, ImageSmoothingQuality(..),
        js_ImageSmoothingQualityLow, js_ImageSmoothingQualityMedium,
        js_ImageSmoothingQualityHigh, CanvasWindingRule(..),
        js_CanvasWindingRuleNonzero, js_CanvasWindingRuleEvenodd,
        WebGLPowerPreference(..), js_WebGLPowerPreferenceDefault,
        js_WebGLPowerPreferenceLowPower,
        js_WebGLPowerPreferenceHighPerformance, WebGPUCompareFunction(..),
        js_WebGPUCompareFunctionNever, js_WebGPUCompareFunctionLess,
        js_WebGPUCompareFunctionEqual, js_WebGPUCompareFunctionLessequal,
        js_WebGPUCompareFunctionGreater, js_WebGPUCompareFunctionNotequal,
        js_WebGPUCompareFunctionGreaterequal,
        js_WebGPUCompareFunctionAlways, WebGPUPixelFormat(..),
        js_WebGPUPixelFormatBGRA8Unorm, WebGPULoadAction(..),
        js_WebGPULoadActionDontcare, js_WebGPULoadActionLoad,
        js_WebGPULoadActionClear, WebGPUStoreAction(..),
        js_WebGPUStoreActionDontcare, js_WebGPUStoreActionStore,
        js_WebGPUStoreActionMultisampleresolve, WebGPUPrimitiveType(..),
        js_WebGPUPrimitiveTypePoint, js_WebGPUPrimitiveTypeLine,
        js_WebGPUPrimitiveTypeLinestrip, js_WebGPUPrimitiveTypeTriangle,
        js_WebGPUPrimitiveTypeTrianglestrip, WebGPUFunctionType(..),
        js_WebGPUFunctionTypeFragment, js_WebGPUFunctionTypeVertex,
        WebGPUStencilOperation(..), js_WebGPUStencilOperationKeep,
        js_WebGPUStencilOperationZero, js_WebGPUStencilOperationReplace,
        js_WebGPUStencilOperationIncrementclamp,
        js_WebGPUStencilOperationDecrementclamp,
        js_WebGPUStencilOperationInvert,
        js_WebGPUStencilOperationIncrementwrap,
        js_WebGPUStencilOperationDecrementwrap, WebGPUStatus(..),
        js_WebGPUStatusNotenqueued, js_WebGPUStatusEnqueued,
        js_WebGPUStatusCommitted, js_WebGPUStatusScheduled,
        js_WebGPUStatusCompleted, js_WebGPUStatusError,
        WebGPUSamplerAddressMode(..),
        js_WebGPUSamplerAddressModeClamptoedge,
        js_WebGPUSamplerAddressModeMirrorclamptoedge,
        js_WebGPUSamplerAddressModeRepeat,
        js_WebGPUSamplerAddressModeMirrorrepeat,
        js_WebGPUSamplerAddressModeClamptozero,
        WebGPUSamplerMinMagFilter(..), js_WebGPUSamplerMinMagFilterNearest,
        js_WebGPUSamplerMinMagFilterLinear, WebGPUSamplerMipFilter(..),
        js_WebGPUSamplerMipFilterNotmipmapped,
        js_WebGPUSamplerMipFilterNearest, js_WebGPUSamplerMipFilterLinear,
        WebGPUCullMode(..), js_WebGPUCullModeNone, js_WebGPUCullModeFront,
        js_WebGPUCullModeBack, WebGPUIndexType(..),
        js_WebGPUIndexTypeUint16, js_WebGPUIndexTypeUint32,
        WebGPUVisibilityResultMode(..),
        js_WebGPUVisibilityResultModeDisabled,
        js_WebGPUVisibilityResultModeBoolean,
        js_WebGPUVisibilityResultModeCounting, WebGPUWinding(..),
        js_WebGPUWindingClockwise, js_WebGPUWindingCounterclockwise,
        WebGPUDepthClipMode(..), js_WebGPUDepthClipModeClip,
        js_WebGPUDepthClipModeClamp, WebGPUTriangleFillMode(..),
        js_WebGPUTriangleFillModeFill, js_WebGPUTriangleFillModeLines,
        WebGPUCPUCacheMode(..), js_WebGPUCPUCacheModeDefaultcache,
        js_WebGPUCPUCacheModeWritecombined, WebGPUStorageMode(..),
        js_WebGPUStorageModeShared, js_WebGPUStorageModeManaged,
        js_WebGPUStorageModePrivate, WebGPUResourceOptions(..),
        js_WebGPUResourceOptionsCpucachemodedefaultcache,
        js_WebGPUResourceOptionsCpucachemodewritecombined,
        js_WebGPUResourceOptionsStoragemodeshared,
        js_WebGPUResourceOptionsStoragemodemanaged,
        js_WebGPUResourceOptionsStoragemodeprivate,
        js_WebGPUResourceOptionsOptioncpucachemodedefaultcache,
        js_WebGPUResourceOptionsOptioncpucachemodewritecombined,
        WebGPUTextureUsage(..), js_WebGPUTextureUsageUnknown,
        js_WebGPUTextureUsageShaderread, js_WebGPUTextureUsageShaderwrite,
        js_WebGPUTextureUsageRendertarget,
        js_WebGPUTextureUsagePixelformatview, WebGPUBlendOperation(..),
        js_WebGPUBlendOperationAdd, js_WebGPUBlendOperationSubtract,
        js_WebGPUBlendOperationReversesubtract, js_WebGPUBlendOperationMin,
        js_WebGPUBlendOperationMax, WebGPUBlendFactor(..),
        js_WebGPUBlendFactorZero, js_WebGPUBlendFactorOne,
        js_WebGPUBlendFactorSourcecolor,
        js_WebGPUBlendFactorOneminussourcecolor,
        js_WebGPUBlendFactorSourcealpha,
        js_WebGPUBlendFactorOneminussourcealpha,
        js_WebGPUBlendFactorDestinationcolor,
        js_WebGPUBlendFactorOneminusdestinationcolor,
        js_WebGPUBlendFactorDestinationalpha,
        js_WebGPUBlendFactorOneminusdestinationalpha,
        js_WebGPUBlendFactorSourcealphasaturated,
        js_WebGPUBlendFactorBlendcolor,
        js_WebGPUBlendFactorOneminusblendcolor,
        js_WebGPUBlendFactorBlendalpha,
        js_WebGPUBlendFactorOneminusblendalpha, WebGPUColorWriteMask(..),
        js_WebGPUColorWriteMaskNone, js_WebGPUColorWriteMaskRed,
        js_WebGPUColorWriteMaskGreen, js_WebGPUColorWriteMaskBlue,
        js_WebGPUColorWriteMaskAlpha, js_WebGPUColorWriteMaskAll,
        WebGPUMultisampleDepthResolveFilter(..),
        js_WebGPUMultisampleDepthResolveFilterSample0,
        js_WebGPUMultisampleDepthResolveFilterMin,
        js_WebGPUMultisampleDepthResolveFilterMax, WebGPUFeatureSet(..),
        js_WebGPUFeatureSetLevel1, js_WebGPUFeatureSetLevel2,
        VideoPresentationMode(..), js_VideoPresentationModeFullscreen,
        js_VideoPresentationModePictureInPicture,
        js_VideoPresentationModeInline, TextTrackMode(..),
        js_TextTrackModeDisabled, js_TextTrackModeHidden,
        js_TextTrackModeShowing, TextTrackKind(..),
        js_TextTrackKindSubtitles, js_TextTrackKindCaptions,
        js_TextTrackKindDescriptions, js_TextTrackKindChapters,
        js_TextTrackKindMetadata, js_TextTrackKindForced,
        ApplePayErrorCode(..), js_ApplePayErrorCodeUnknown,
        js_ApplePayErrorCodeShippingContactInvalid,
        js_ApplePayErrorCodeBillingContactInvalid,
        js_ApplePayErrorCodeAddressUnservicable,
        ApplePayErrorContactField(..),
        js_ApplePayErrorContactFieldPhoneNumber,
        js_ApplePayErrorContactFieldEmailAddress,
        js_ApplePayErrorContactFieldName,
        js_ApplePayErrorContactFieldPostalAddress,
        js_ApplePayErrorContactFieldAddressLines,
        js_ApplePayErrorContactFieldLocality,
        js_ApplePayErrorContactFieldPostalCode,
        js_ApplePayErrorContactFieldAdministrativeArea,
        js_ApplePayErrorContactFieldCountry, ApplePayLineItemType(..),
        js_ApplePayLineItemTypePending, js_ApplePayLineItemTypeFinal,
        ApplePayPaymentMethodType(..), js_ApplePayPaymentMethodTypeDebit,
        js_ApplePayPaymentMethodTypeCredit,
        js_ApplePayPaymentMethodTypePrepaid,
        js_ApplePayPaymentMethodTypeStore,
        ApplePayPaymentPassActivationState(..),
        js_ApplePayPaymentPassActivationStateActivated,
        js_ApplePayPaymentPassActivationStateRequiresActivation,
        js_ApplePayPaymentPassActivationStateActivating,
        js_ApplePayPaymentPassActivationStateSuspended,
        js_ApplePayPaymentPassActivationStateDeactivated,
        ApplePayMerchantCapability(..),
        js_ApplePayMerchantCapabilitySupports3DS,
        js_ApplePayMerchantCapabilitySupportsEMV,
        js_ApplePayMerchantCapabilitySupportsCredit,
        js_ApplePayMerchantCapabilitySupportsDebit,
        ApplePayContactField(..), js_ApplePayContactFieldEmail,
        js_ApplePayContactFieldName, js_ApplePayContactFieldPhone,
        js_ApplePayContactFieldPostalAddress, ApplePayShippingType(..),
        js_ApplePayShippingTypeShipping, js_ApplePayShippingTypeDelivery,
        js_ApplePayShippingTypeStorePickup,
        js_ApplePayShippingTypeServicePickup, MediaKeyMessageType(..),
        js_MediaKeyMessageTypeLicenseRequest,
        js_MediaKeyMessageTypeLicenseRenewal,
        js_MediaKeyMessageTypeLicenseRelease,
        js_MediaKeyMessageTypeIndividualizationRequest,
        MediaKeySessionType(..), js_MediaKeySessionTypeTemporary,
        js_MediaKeySessionTypePersistentUsageRecord,
        js_MediaKeySessionTypePersistentLicense, MediaKeysRequirement(..),
        js_MediaKeysRequirementRequired, js_MediaKeysRequirementOptional,
        js_MediaKeysRequirementNotAllowed, MediaKeyStatus(..),
        js_MediaKeyStatusUsable, js_MediaKeyStatusExpired,
        js_MediaKeyStatusReleased, js_MediaKeyStatusOutputRestricted,
        js_MediaKeyStatusOutputDownscaled, js_MediaKeyStatusStatusPending,
        js_MediaKeyStatusInternalError, RequestType(..), js_RequestType,
        js_RequestTypeAudio, js_RequestTypeFont, js_RequestTypeImage,
        js_RequestTypeScript, js_RequestTypeStyle, js_RequestTypeTrack,
        js_RequestTypeVideo, RequestDestination(..), js_RequestDestination,
        js_RequestDestinationDocument, js_RequestDestinationSharedworker,
        js_RequestDestinationSubresource, js_RequestDestinationUnknown,
        js_RequestDestinationWorker, RequestMode(..),
        js_RequestModeNavigate, js_RequestModeSameOrigin,
        js_RequestModeNoCors, js_RequestModeCors, RequestCredentials(..),
        js_RequestCredentialsOmit, js_RequestCredentialsSameOrigin,
        js_RequestCredentialsInclude, RequestCache(..),
        js_RequestCacheDefault, js_RequestCacheNoStore,
        js_RequestCacheReload, js_RequestCacheNoCache,
        js_RequestCacheForceCache, js_RequestCacheOnlyIfCached,
        RequestRedirect(..), js_RequestRedirectFollow,
        js_RequestRedirectError, js_RequestRedirectManual,
        ReferrerPolicy(..), js_ReferrerPolicy, js_ReferrerPolicyNoReferrer,
        js_ReferrerPolicyNoReferrerWhenDowngrade, js_ReferrerPolicyOrigin,
        js_ReferrerPolicyOriginWhenCrossOrigin, js_ReferrerPolicyUnsafeUrl,
        ResponseType(..), js_ResponseTypeBasic, js_ResponseTypeCors,
        js_ResponseTypeDefault, js_ResponseTypeError,
        js_ResponseTypeOpaque, js_ResponseTypeOpaqueredirect,
        IDBCursorDirection(..), js_IDBCursorDirectionNext,
        js_IDBCursorDirectionNextunique, js_IDBCursorDirectionPrev,
        js_IDBCursorDirectionPrevunique, IDBRequestReadyState(..),
        js_IDBRequestReadyStatePending, js_IDBRequestReadyStateDone,
        IDBTransactionMode(..), js_IDBTransactionModeReadonly,
        js_IDBTransactionModeReadwrite, js_IDBTransactionModeVersionchange,
        DeviceType(..), js_DeviceTypeNone, js_DeviceTypeAirplay,
        js_DeviceTypeTvout, MediaSessionKind(..),
        js_MediaSessionKindContent, js_MediaSessionKindTransient,
        js_MediaSessionKindTransientSolo, js_MediaSessionKindAmbient,
        EndOfStreamError(..), js_EndOfStreamErrorNetwork,
        js_EndOfStreamErrorDecode, ReadyState(..), js_ReadyStateClosed,
        js_ReadyStateOpen, js_ReadyStateEnded, AppendMode(..),
        js_AppendModeSegments, js_AppendModeSequence, MediaDeviceKind(..),
        js_MediaDeviceKindAudioinput, js_MediaDeviceKindAudiooutput,
        js_MediaDeviceKindVideoinput, MediaStreamTrackState(..),
        js_MediaStreamTrackStateLive, js_MediaStreamTrackStateEnded,
        RTCIceTransportPolicy(..), js_RTCIceTransportPolicyRelay,
        js_RTCIceTransportPolicyAll, RTCBundlePolicy(..),
        js_RTCBundlePolicyBalanced, js_RTCBundlePolicyMaxCompat,
        js_RTCBundlePolicyMaxBundle, RTCDataChannelState(..),
        js_RTCDataChannelStateConnecting, js_RTCDataChannelStateOpen,
        js_RTCDataChannelStateClosing, js_RTCDataChannelStateClosed,
        RTCIceConnectionState(..), js_RTCIceConnectionStateNew,
        js_RTCIceConnectionStateChecking,
        js_RTCIceConnectionStateConnected,
        js_RTCIceConnectionStateCompleted, js_RTCIceConnectionStateFailed,
        js_RTCIceConnectionStateDisconnected,
        js_RTCIceConnectionStateClosed, RTCIceGatheringState(..),
        js_RTCIceGatheringStateNew, js_RTCIceGatheringStateGathering,
        js_RTCIceGatheringStateComplete, RTCIceTransportState(..),
        js_RTCIceTransportStateNew, js_RTCIceTransportStateChecking,
        js_RTCIceTransportStateConnected, js_RTCIceTransportStateCompleted,
        js_RTCIceTransportStateFailed, js_RTCIceTransportStateDisconnected,
        js_RTCIceTransportStateClosed, RTCPeerConnectionState(..),
        js_RTCPeerConnectionStateNew, js_RTCPeerConnectionStateConnecting,
        js_RTCPeerConnectionStateConnected,
        js_RTCPeerConnectionStateDisconnected,
        js_RTCPeerConnectionStateFailed, js_RTCPeerConnectionStateClosed,
        RTCDegradationPreference(..),
        js_RTCDegradationPreferenceMaintainFramerate,
        js_RTCDegradationPreferenceMaintainResolution,
        js_RTCDegradationPreferenceBalanced, RTCDtxStatus(..),
        js_RTCDtxStatusDisabled, js_RTCDtxStatusEnabled,
        RTCPriorityType(..), js_RTCPriorityTypeVeryLow,
        js_RTCPriorityTypeLow, js_RTCPriorityTypeMedium,
        js_RTCPriorityTypeHigh, RTCRtpTransceiverDirection(..),
        js_RTCRtpTransceiverDirectionSendrecv,
        js_RTCRtpTransceiverDirectionSendonly,
        js_RTCRtpTransceiverDirectionRecvonly,
        js_RTCRtpTransceiverDirectionInactive, RTCSdpType(..),
        js_RTCSdpTypeOffer, js_RTCSdpTypePranswer, js_RTCSdpTypeAnswer,
        js_RTCSdpTypeRollback, RTCSignalingState(..),
        js_RTCSignalingStateStable, js_RTCSignalingStateHaveLocalOffer,
        js_RTCSignalingStateHaveRemoteOffer,
        js_RTCSignalingStateHaveLocalPranswer,
        js_RTCSignalingStateHaveRemotePranswer, RTCStatsType(..),
        js_RTCStatsTypeCodec, js_RTCStatsTypeInboundRtp,
        js_RTCStatsTypeOutboundRtp, js_RTCStatsTypePeerConnection,
        js_RTCStatsTypeDataChannel, js_RTCStatsTypeTrack,
        js_RTCStatsTypeTransport, js_RTCStatsTypeCandidatePair,
        js_RTCStatsTypeLocalCandidate, js_RTCStatsTypeRemoteCandidate,
        js_RTCStatsTypeCertificate, NotificationDirection(..),
        js_NotificationDirectionAuto, js_NotificationDirectionLtr,
        js_NotificationDirectionRtl, AudioContextState(..),
        js_AudioContextStateSuspended, js_AudioContextStateRunning,
        js_AudioContextStateInterrupted, js_AudioContextStateClosed,
        BiquadFilterType(..), js_BiquadFilterTypeLowpass,
        js_BiquadFilterTypeHighpass, js_BiquadFilterTypeBandpass,
        js_BiquadFilterTypeLowshelf, js_BiquadFilterTypeHighshelf,
        js_BiquadFilterTypePeaking, js_BiquadFilterTypeNotch,
        js_BiquadFilterTypeAllpass, OscillatorType(..),
        js_OscillatorTypeSine, js_OscillatorTypeSquare,
        js_OscillatorTypeSawtooth, js_OscillatorTypeTriangle,
        js_OscillatorTypeCustom, PanningModelType(..),
        js_PanningModelTypeEqualpower, js_PanningModelTypeHRTF,
        DistanceModelType(..), js_DistanceModelTypeLinear,
        js_DistanceModelTypeInverse, js_DistanceModelTypeExponential,
        OverSampleType(..), js_OverSampleTypeNone, js_OverSampleType2x,
        js_OverSampleType4x, ScrollRestoration(..),
        js_ScrollRestorationAuto, js_ScrollRestorationManual,
        XMLHttpRequestResponseType(..), js_XMLHttpRequestResponseType,
        js_XMLHttpRequestResponseTypeArraybuffer,
        js_XMLHttpRequestResponseTypeBlob,
        js_XMLHttpRequestResponseTypeDocument,
        js_XMLHttpRequestResponseTypeJson,
        js_XMLHttpRequestResponseTypeText)
       where
import           Control.Applicative    ((<$>))
import           Control.Monad          (void)
import           Control.Monad.IO.Class (MonadIO (..))
import           Data.Int               (Int64)
import           Data.Maybe             (fromJust)
import           Data.Traversable       (mapM)
import           Data.Typeable          (Typeable)
import           Data.Word              (Word, Word64)
import           GHCJS.DOM.Types
import           GHCJS.Foreign          (jsNull, jsUndefined)
import           GHCJS.Foreign.Callback (OnBlocked (..), asyncCallback,
                                         asyncCallback1, asyncCallback2,
                                         syncCallback, syncCallback1,
                                         syncCallback2)
import           GHCJS.Marshal          (FromJSVal (..), ToJSVal (..))
import           GHCJS.Marshal.Pure     (PFromJSVal (..), PToJSVal (..))
import           GHCJS.Types            (JSString, JSVal (..))
import           Prelude                (Bool (..), Double, Eq, Float, IO, Int,
                                         Maybe, Ord, Read, Show, fmap,
                                         fromIntegral, maybe, return, round,
                                         (.), (==), (>>=))

import qualified Prelude                (error)

data KeyType = KeyTypePublic
             | KeyTypePrivate
             | KeyTypeSecret
             deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal KeyType where
        pToJSVal KeyTypePublic  = js_KeyTypePublic
        pToJSVal KeyTypePrivate = js_KeyTypePrivate
        pToJSVal KeyTypeSecret  = js_KeyTypeSecret

instance ToJSVal KeyType where
        toJSVal = return . pToJSVal

instance PFromJSVal KeyType where
        pFromJSVal x | x `js_eq` js_KeyTypePublic = KeyTypePublic
        pFromJSVal x | x `js_eq` js_KeyTypePrivate = KeyTypePrivate
        pFromJSVal x | x `js_eq` js_KeyTypeSecret = KeyTypeSecret

instance FromJSVal KeyType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"public\"" js_KeyTypePublic ::
--         JSVal
js_KeyTypePublic :: JSVal
js_KeyTypePublic = jsNull

-- foreign import javascript unsafe "\"private\"" js_KeyTypePrivate ::
--         JSVal
js_KeyTypePrivate :: JSVal
js_KeyTypePrivate = jsNull

-- foreign import javascript unsafe "\"secret\"" js_KeyTypeSecret ::
--         JSVal
js_KeyTypeSecret :: JSVal
js_KeyTypeSecret = jsNull

data CryptoKeyUsage = CryptoKeyUsageEncrypt
                    | CryptoKeyUsageDecrypt
                    | CryptoKeyUsageSign
                    | CryptoKeyUsageVerify
                    | CryptoKeyUsageDeriveKey
                    | CryptoKeyUsageDeriveBits
                    | CryptoKeyUsageWrapKey
                    | CryptoKeyUsageUnwrapKey
                    deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal CryptoKeyUsage where
        pToJSVal CryptoKeyUsageEncrypt    = js_CryptoKeyUsageEncrypt
        pToJSVal CryptoKeyUsageDecrypt    = js_CryptoKeyUsageDecrypt
        pToJSVal CryptoKeyUsageSign       = js_CryptoKeyUsageSign
        pToJSVal CryptoKeyUsageVerify     = js_CryptoKeyUsageVerify
        pToJSVal CryptoKeyUsageDeriveKey  = js_CryptoKeyUsageDeriveKey
        pToJSVal CryptoKeyUsageDeriveBits = js_CryptoKeyUsageDeriveBits
        pToJSVal CryptoKeyUsageWrapKey    = js_CryptoKeyUsageWrapKey
        pToJSVal CryptoKeyUsageUnwrapKey  = js_CryptoKeyUsageUnwrapKey

instance ToJSVal CryptoKeyUsage where
        toJSVal = return . pToJSVal

instance PFromJSVal CryptoKeyUsage where
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageEncrypt = CryptoKeyUsageEncrypt
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageDecrypt = CryptoKeyUsageDecrypt
        pFromJSVal x | x `js_eq` js_CryptoKeyUsageSign = CryptoKeyUsageSign
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageVerify = CryptoKeyUsageVerify
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageDeriveKey = CryptoKeyUsageDeriveKey
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageDeriveBits = CryptoKeyUsageDeriveBits
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageWrapKey = CryptoKeyUsageWrapKey
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageUnwrapKey = CryptoKeyUsageUnwrapKey

instance FromJSVal CryptoKeyUsage where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"encrypt\""
--         js_CryptoKeyUsageEncrypt :: JSVal
js_CryptoKeyUsageEncrypt :: JSVal
js_CryptoKeyUsageEncrypt = jsNull

-- foreign import javascript unsafe "\"decrypt\""
--         js_CryptoKeyUsageDecrypt :: JSVal
js_CryptoKeyUsageDecrypt :: JSVal
js_CryptoKeyUsageDecrypt = jsNull

-- foreign import javascript unsafe "\"sign\"" js_CryptoKeyUsageSign
--         :: JSVal
js_CryptoKeyUsageSign :: JSVal
js_CryptoKeyUsageSign = jsNull

-- foreign import javascript unsafe "\"verify\""
--         js_CryptoKeyUsageVerify :: JSVal
js_CryptoKeyUsageVerify :: JSVal
js_CryptoKeyUsageVerify = jsNull

-- foreign import javascript unsafe "\"deriveKey\""
--         js_CryptoKeyUsageDeriveKey :: JSVal
js_CryptoKeyUsageDeriveKey :: JSVal
js_CryptoKeyUsageDeriveKey = jsNull

-- foreign import javascript unsafe "\"deriveBits\""
--         js_CryptoKeyUsageDeriveBits :: JSVal
js_CryptoKeyUsageDeriveBits :: JSVal
js_CryptoKeyUsageDeriveBits = jsNull

-- foreign import javascript unsafe "\"wrapKey\""
--         js_CryptoKeyUsageWrapKey :: JSVal
js_CryptoKeyUsageWrapKey :: JSVal
js_CryptoKeyUsageWrapKey = jsNull

-- foreign import javascript unsafe "\"unwrapKey\""
--         js_CryptoKeyUsageUnwrapKey :: JSVal
js_CryptoKeyUsageUnwrapKey :: JSVal
js_CryptoKeyUsageUnwrapKey = jsNull

data KeyFormat = KeyFormatRaw
               | KeyFormatSpki
               | KeyFormatPkcs8
               | KeyFormatJwk
               deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal KeyFormat where
        pToJSVal KeyFormatRaw   = js_KeyFormatRaw
        pToJSVal KeyFormatSpki  = js_KeyFormatSpki
        pToJSVal KeyFormatPkcs8 = js_KeyFormatPkcs8
        pToJSVal KeyFormatJwk   = js_KeyFormatJwk

instance ToJSVal KeyFormat where
        toJSVal = return . pToJSVal

instance PFromJSVal KeyFormat where
        pFromJSVal x | x `js_eq` js_KeyFormatRaw = KeyFormatRaw
        pFromJSVal x | x `js_eq` js_KeyFormatSpki = KeyFormatSpki
        pFromJSVal x | x `js_eq` js_KeyFormatPkcs8 = KeyFormatPkcs8
        pFromJSVal x | x `js_eq` js_KeyFormatJwk = KeyFormatJwk

instance FromJSVal KeyFormat where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"raw\"" js_KeyFormatRaw :: JSVal
js_KeyFormatRaw :: JSVal
js_KeyFormatRaw = jsNull

-- foreign import javascript unsafe "\"spki\"" js_KeyFormatSpki ::
--         JSVal
js_KeyFormatSpki :: JSVal
js_KeyFormatSpki = jsNull

-- foreign import javascript unsafe "\"pkcs8\"" js_KeyFormatPkcs8 ::
--         JSVal
js_KeyFormatPkcs8 :: JSVal
js_KeyFormatPkcs8 = jsNull

-- foreign import javascript unsafe "\"jwk\"" js_KeyFormatJwk :: JSVal
js_KeyFormatJwk :: JSVal
js_KeyFormatJwk = jsNull

data FontFaceLoadStatus = FontFaceLoadStatusUnloaded
                        | FontFaceLoadStatusLoading
                        | FontFaceLoadStatusLoaded
                        | FontFaceLoadStatusError
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal FontFaceLoadStatus where
        pToJSVal FontFaceLoadStatusUnloaded = js_FontFaceLoadStatusUnloaded
        pToJSVal FontFaceLoadStatusLoading  = js_FontFaceLoadStatusLoading
        pToJSVal FontFaceLoadStatusLoaded   = js_FontFaceLoadStatusLoaded
        pToJSVal FontFaceLoadStatusError    = js_FontFaceLoadStatusError

instance ToJSVal FontFaceLoadStatus where
        toJSVal = return . pToJSVal

instance PFromJSVal FontFaceLoadStatus where
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusUnloaded =
            FontFaceLoadStatusUnloaded
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusLoading =
            FontFaceLoadStatusLoading
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusLoaded = FontFaceLoadStatusLoaded
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusError = FontFaceLoadStatusError

instance FromJSVal FontFaceLoadStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"unloaded\""
--         js_FontFaceLoadStatusUnloaded :: JSVal
js_FontFaceLoadStatusUnloaded :: JSVal
js_FontFaceLoadStatusUnloaded = jsNull

-- foreign import javascript unsafe "\"loading\""
--         js_FontFaceLoadStatusLoading :: JSVal
js_FontFaceLoadStatusLoading :: JSVal
js_FontFaceLoadStatusLoading = jsNull

-- foreign import javascript unsafe "\"loaded\""
--         js_FontFaceLoadStatusLoaded :: JSVal
js_FontFaceLoadStatusLoaded :: JSVal
js_FontFaceLoadStatusLoaded = jsNull

-- foreign import javascript unsafe "\"error\""
--         js_FontFaceLoadStatusError :: JSVal
js_FontFaceLoadStatusError :: JSVal
js_FontFaceLoadStatusError = jsNull

data FontFaceSetLoadStatus = FontFaceSetLoadStatusLoading
                           | FontFaceSetLoadStatusLoaded
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal FontFaceSetLoadStatus where
        pToJSVal FontFaceSetLoadStatusLoading
          = js_FontFaceSetLoadStatusLoading
        pToJSVal FontFaceSetLoadStatusLoaded
          = js_FontFaceSetLoadStatusLoaded

instance ToJSVal FontFaceSetLoadStatus where
        toJSVal = return . pToJSVal

instance PFromJSVal FontFaceSetLoadStatus where
        pFromJSVal x
          | x `js_eq` js_FontFaceSetLoadStatusLoading =
            FontFaceSetLoadStatusLoading
        pFromJSVal x
          | x `js_eq` js_FontFaceSetLoadStatusLoaded =
            FontFaceSetLoadStatusLoaded

instance FromJSVal FontFaceSetLoadStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"loading\""
--         js_FontFaceSetLoadStatusLoading :: JSVal
js_FontFaceSetLoadStatusLoading :: JSVal
js_FontFaceSetLoadStatusLoading = jsNull

-- foreign import javascript unsafe "\"loaded\""
--         js_FontFaceSetLoadStatusLoaded :: JSVal
js_FontFaceSetLoadStatusLoaded :: JSVal
js_FontFaceSetLoadStatusLoaded = jsNull

data VisibilityState = VisibilityStateHidden
                     | VisibilityStateVisible
                     | VisibilityStatePrerender
                     deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal VisibilityState where
        pToJSVal VisibilityStateHidden    = js_VisibilityStateHidden
        pToJSVal VisibilityStateVisible   = js_VisibilityStateVisible
        pToJSVal VisibilityStatePrerender = js_VisibilityStatePrerender

instance ToJSVal VisibilityState where
        toJSVal = return . pToJSVal

instance PFromJSVal VisibilityState where
        pFromJSVal x
          | x `js_eq` js_VisibilityStateHidden = VisibilityStateHidden
        pFromJSVal x
          | x `js_eq` js_VisibilityStateVisible = VisibilityStateVisible
        pFromJSVal x
          | x `js_eq` js_VisibilityStatePrerender = VisibilityStatePrerender

instance FromJSVal VisibilityState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"hidden\""
--         js_VisibilityStateHidden :: JSVal
js_VisibilityStateHidden :: JSVal
js_VisibilityStateHidden = jsNull

-- foreign import javascript unsafe "\"visible\""
--         js_VisibilityStateVisible :: JSVal
js_VisibilityStateVisible :: JSVal
js_VisibilityStateVisible = jsNull

-- foreign import javascript unsafe "\"prerender\""
--         js_VisibilityStatePrerender :: JSVal
js_VisibilityStatePrerender :: JSVal
js_VisibilityStatePrerender = jsNull

data DocumentReadyState = DocumentReadyStateLoading
                        | DocumentReadyStateInteractive
                        | DocumentReadyStateComplete
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal DocumentReadyState where
        pToJSVal DocumentReadyStateLoading = js_DocumentReadyStateLoading
        pToJSVal DocumentReadyStateInteractive
          = js_DocumentReadyStateInteractive
        pToJSVal DocumentReadyStateComplete = js_DocumentReadyStateComplete

instance ToJSVal DocumentReadyState where
        toJSVal = return . pToJSVal

instance PFromJSVal DocumentReadyState where
        pFromJSVal x
          | x `js_eq` js_DocumentReadyStateLoading =
            DocumentReadyStateLoading
        pFromJSVal x
          | x `js_eq` js_DocumentReadyStateInteractive =
            DocumentReadyStateInteractive
        pFromJSVal x
          | x `js_eq` js_DocumentReadyStateComplete =
            DocumentReadyStateComplete

instance FromJSVal DocumentReadyState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"loading\""
--         js_DocumentReadyStateLoading :: JSVal
js_DocumentReadyStateLoading :: JSVal
js_DocumentReadyStateLoading = jsNull

-- foreign import javascript unsafe "\"interactive\""
--         js_DocumentReadyStateInteractive :: JSVal
js_DocumentReadyStateInteractive :: JSVal
js_DocumentReadyStateInteractive = jsNull

-- foreign import javascript unsafe "\"complete\""
--         js_DocumentReadyStateComplete :: JSVal
js_DocumentReadyStateComplete :: JSVal
js_DocumentReadyStateComplete = jsNull

data ShadowRootMode = ShadowRootModeUserAgent
                    | ShadowRootModeClosed
                    | ShadowRootModeOpen
                    deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ShadowRootMode where
        pToJSVal ShadowRootModeUserAgent = js_ShadowRootModeUserAgent
        pToJSVal ShadowRootModeClosed    = js_ShadowRootModeClosed
        pToJSVal ShadowRootModeOpen      = js_ShadowRootModeOpen

instance ToJSVal ShadowRootMode where
        toJSVal = return . pToJSVal

instance PFromJSVal ShadowRootMode where
        pFromJSVal x
          | x `js_eq` js_ShadowRootModeUserAgent = ShadowRootModeUserAgent
        pFromJSVal x
          | x `js_eq` js_ShadowRootModeClosed = ShadowRootModeClosed
        pFromJSVal x | x `js_eq` js_ShadowRootModeOpen = ShadowRootModeOpen

instance FromJSVal ShadowRootMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"user-agent\""

--
-- js_ShadowRootModeUserAgent
--  :: JSVal
js_ShadowRootModeUserAgent :: JSVal
js_ShadowRootModeUserAgent = jsNull

-- foreign import javascript unsafe "\"closed\""

--
-- js_ShadowRootModeClosed
--  :: JSVal
js_ShadowRootModeClosed :: JSVal
js_ShadowRootModeClosed = jsNull

-- foreign import javascript unsafe "\"open\""
--
-- js_ShadowRootModeOpen

--         :: JSVal
js_ShadowRootModeOpen
        :: JSVal
js_ShadowRootModeOpen
 = jsNull

data BlobLineEndings = BlobLineEndingsTransparent
                     | BlobLineEndingsNative
                     deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal BlobLineEndings where
        pToJSVal BlobLineEndingsTransparent = js_BlobLineEndingsTransparent
        pToJSVal BlobLineEndingsNative      = js_BlobLineEndingsNative

instance ToJSVal BlobLineEndings where
        toJSVal = return . pToJSVal

instance PFromJSVal BlobLineEndings where
        pFromJSVal x
          | x `js_eq` js_BlobLineEndingsTransparent =
            BlobLineEndingsTransparent
        pFromJSVal x
          | x `js_eq` js_BlobLineEndingsNative = BlobLineEndingsNative

instance FromJSVal BlobLineEndings where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"transparent\""

--
-- js_BlobLineEndingsTransparent
--  :: JSVal
js_BlobLineEndingsTransparent :: JSVal
js_BlobLineEndingsTransparent = jsNull

-- foreign import javascript unsafe "\"native\""

--
-- js_BlobLineEndingsNative
--  :: JSVal
js_BlobLineEndingsNative :: JSVal
js_BlobLineEndingsNative = jsNull

data ImageSmoothingQuality = ImageSmoothingQualityLow
                           | ImageSmoothingQualityMedium
                           | ImageSmoothingQualityHigh
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ImageSmoothingQuality where
        pToJSVal ImageSmoothingQualityLow = js_ImageSmoothingQualityLow
        pToJSVal ImageSmoothingQualityMedium
          = js_ImageSmoothingQualityMedium
        pToJSVal ImageSmoothingQualityHigh = js_ImageSmoothingQualityHigh

instance ToJSVal ImageSmoothingQuality where
        toJSVal = return . pToJSVal

instance PFromJSVal ImageSmoothingQuality where
        pFromJSVal x
          | x `js_eq` js_ImageSmoothingQualityLow = ImageSmoothingQualityLow
        pFromJSVal x
          | x `js_eq` js_ImageSmoothingQualityMedium =
            ImageSmoothingQualityMedium
        pFromJSVal x
          | x `js_eq` js_ImageSmoothingQualityHigh =
            ImageSmoothingQualityHigh

instance FromJSVal ImageSmoothingQuality where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"low\""

--
-- js_ImageSmoothingQualityLow
--  :: JSVal
js_ImageSmoothingQualityLow :: JSVal
js_ImageSmoothingQualityLow = jsNull

-- foreign import javascript unsafe "\"medium\""

--
-- js_ImageSmoothingQualityMedium
--  :: JSVal
js_ImageSmoothingQualityMedium :: JSVal
js_ImageSmoothingQualityMedium = jsNull

-- foreign import javascript unsafe "\"high\""

--
-- js_ImageSmoothingQualityHigh
--  :: JSVal
js_ImageSmoothingQualityHigh :: JSVal
js_ImageSmoothingQualityHigh = jsNull

data CanvasWindingRule = CanvasWindingRuleNonzero
                       | CanvasWindingRuleEvenodd
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal CanvasWindingRule where
        pToJSVal CanvasWindingRuleNonzero = js_CanvasWindingRuleNonzero
        pToJSVal CanvasWindingRuleEvenodd = js_CanvasWindingRuleEvenodd

instance ToJSVal CanvasWindingRule where
        toJSVal = return . pToJSVal

instance PFromJSVal CanvasWindingRule where
        pFromJSVal x
          | x `js_eq` js_CanvasWindingRuleNonzero = CanvasWindingRuleNonzero
        pFromJSVal x
          | x `js_eq` js_CanvasWindingRuleEvenodd = CanvasWindingRuleEvenodd

instance FromJSVal CanvasWindingRule where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"nonzero\""

--
-- js_CanvasWindingRuleNonzero
--  :: JSVal
js_CanvasWindingRuleNonzero :: JSVal
js_CanvasWindingRuleNonzero = jsNull

-- foreign import javascript unsafe "\"evenodd\""

--
-- js_CanvasWindingRuleEvenodd
--  :: JSVal
js_CanvasWindingRuleEvenodd :: JSVal
js_CanvasWindingRuleEvenodd = jsNull

data WebGLPowerPreference = WebGLPowerPreferenceDefault
                          | WebGLPowerPreferenceLowPower
                          | WebGLPowerPreferenceHighPerformance
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGLPowerPreference where
        pToJSVal WebGLPowerPreferenceDefault
          = js_WebGLPowerPreferenceDefault
        pToJSVal WebGLPowerPreferenceLowPower
          = js_WebGLPowerPreferenceLowPower
        pToJSVal WebGLPowerPreferenceHighPerformance
          = js_WebGLPowerPreferenceHighPerformance

instance ToJSVal WebGLPowerPreference where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGLPowerPreference where
        pFromJSVal x
          | x `js_eq` js_WebGLPowerPreferenceDefault =
            WebGLPowerPreferenceDefault
        pFromJSVal x
          | x `js_eq` js_WebGLPowerPreferenceLowPower =
            WebGLPowerPreferenceLowPower
        pFromJSVal x
          | x `js_eq` js_WebGLPowerPreferenceHighPerformance =
            WebGLPowerPreferenceHighPerformance

instance FromJSVal WebGLPowerPreference where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"default\""

--
-- js_WebGLPowerPreferenceDefault
--  :: JSVal
js_WebGLPowerPreferenceDefault :: JSVal
js_WebGLPowerPreferenceDefault = jsNull

-- foreign import javascript unsafe "\"low-power\""

--
-- js_WebGLPowerPreferenceLowPower
--  :: JSVal
js_WebGLPowerPreferenceLowPower :: JSVal
js_WebGLPowerPreferenceLowPower = jsNull

-- foreign import javascript unsafe "\"high-performance\""

--
-- js_WebGLPowerPreferenceHighPerformance
--  :: JSVal
js_WebGLPowerPreferenceHighPerformance :: JSVal
js_WebGLPowerPreferenceHighPerformance = jsNull

data WebGPUCompareFunction = WebGPUCompareFunctionNever
                           | WebGPUCompareFunctionLess
                           | WebGPUCompareFunctionEqual
                           | WebGPUCompareFunctionLessequal
                           | WebGPUCompareFunctionGreater
                           | WebGPUCompareFunctionNotequal
                           | WebGPUCompareFunctionGreaterequal
                           | WebGPUCompareFunctionAlways
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUCompareFunction where
        pToJSVal WebGPUCompareFunctionNever = js_WebGPUCompareFunctionNever
        pToJSVal WebGPUCompareFunctionLess = js_WebGPUCompareFunctionLess
        pToJSVal WebGPUCompareFunctionEqual = js_WebGPUCompareFunctionEqual
        pToJSVal WebGPUCompareFunctionLessequal
          = js_WebGPUCompareFunctionLessequal
        pToJSVal WebGPUCompareFunctionGreater
          = js_WebGPUCompareFunctionGreater
        pToJSVal WebGPUCompareFunctionNotequal
          = js_WebGPUCompareFunctionNotequal
        pToJSVal WebGPUCompareFunctionGreaterequal
          = js_WebGPUCompareFunctionGreaterequal
        pToJSVal WebGPUCompareFunctionAlways
          = js_WebGPUCompareFunctionAlways

instance ToJSVal WebGPUCompareFunction where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUCompareFunction where
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionNever =
            WebGPUCompareFunctionNever
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionLess =
            WebGPUCompareFunctionLess
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionEqual =
            WebGPUCompareFunctionEqual
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionLessequal =
            WebGPUCompareFunctionLessequal
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionGreater =
            WebGPUCompareFunctionGreater
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionNotequal =
            WebGPUCompareFunctionNotequal
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionGreaterequal =
            WebGPUCompareFunctionGreaterequal
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionAlways =
            WebGPUCompareFunctionAlways

instance FromJSVal WebGPUCompareFunction where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"never\""

--
-- js_WebGPUCompareFunctionNever
--  :: JSVal
js_WebGPUCompareFunctionNever :: JSVal
js_WebGPUCompareFunctionNever = jsNull

-- foreign import javascript unsafe "\"less\""

--
-- js_WebGPUCompareFunctionLess
--  :: JSVal
js_WebGPUCompareFunctionLess :: JSVal
js_WebGPUCompareFunctionLess = jsNull

-- foreign import javascript unsafe "\"equal\""

--
-- js_WebGPUCompareFunctionEqual
--  :: JSVal
js_WebGPUCompareFunctionEqual :: JSVal
js_WebGPUCompareFunctionEqual = jsNull

-- foreign import javascript unsafe "\"lessequal\""

--
-- js_WebGPUCompareFunctionLessequal
--  :: JSVal
js_WebGPUCompareFunctionLessequal :: JSVal
js_WebGPUCompareFunctionLessequal = jsNull

-- foreign import javascript unsafe "\"greater\""

--
-- js_WebGPUCompareFunctionGreater
--  :: JSVal
js_WebGPUCompareFunctionGreater :: JSVal
js_WebGPUCompareFunctionGreater = jsNull

-- foreign import javascript unsafe "\"notequal\""

--
-- js_WebGPUCompareFunctionNotequal
--  :: JSVal
js_WebGPUCompareFunctionNotequal :: JSVal
js_WebGPUCompareFunctionNotequal = jsNull

-- foreign import javascript unsafe "\"greaterequal\""

--
-- js_WebGPUCompareFunctionGreaterequal
--  :: JSVal
js_WebGPUCompareFunctionGreaterequal :: JSVal
js_WebGPUCompareFunctionGreaterequal = jsNull

-- foreign import javascript unsafe "\"always\""

--
-- js_WebGPUCompareFunctionAlways
--  :: JSVal
js_WebGPUCompareFunctionAlways :: JSVal
js_WebGPUCompareFunctionAlways = jsNull

data WebGPUPixelFormat = WebGPUPixelFormatBGRA8Unorm
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUPixelFormat where
        pToJSVal WebGPUPixelFormatBGRA8Unorm
          = js_WebGPUPixelFormatBGRA8Unorm

instance ToJSVal WebGPUPixelFormat where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUPixelFormat where
        pFromJSVal x
          | x `js_eq` js_WebGPUPixelFormatBGRA8Unorm =
            WebGPUPixelFormatBGRA8Unorm

instance FromJSVal WebGPUPixelFormat where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"BGRA8Unorm\""

--
-- js_WebGPUPixelFormatBGRA8Unorm
--  :: JSVal
js_WebGPUPixelFormatBGRA8Unorm :: JSVal
js_WebGPUPixelFormatBGRA8Unorm = jsNull

data WebGPULoadAction = WebGPULoadActionDontcare
                      | WebGPULoadActionLoad
                      | WebGPULoadActionClear
                      deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPULoadAction where
        pToJSVal WebGPULoadActionDontcare = js_WebGPULoadActionDontcare
        pToJSVal WebGPULoadActionLoad     = js_WebGPULoadActionLoad
        pToJSVal WebGPULoadActionClear    = js_WebGPULoadActionClear

instance ToJSVal WebGPULoadAction where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPULoadAction where
        pFromJSVal x
          | x `js_eq` js_WebGPULoadActionDontcare = WebGPULoadActionDontcare
        pFromJSVal x
          | x `js_eq` js_WebGPULoadActionLoad = WebGPULoadActionLoad
        pFromJSVal x
          | x `js_eq` js_WebGPULoadActionClear = WebGPULoadActionClear

instance FromJSVal WebGPULoadAction where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"dontcare\""

--
-- js_WebGPULoadActionDontcare
--  :: JSVal
js_WebGPULoadActionDontcare :: JSVal
js_WebGPULoadActionDontcare = jsNull

-- foreign import javascript unsafe "\"load\""
--
-- js_WebGPULoadActionLoad

--         :: JSVal
js_WebGPULoadActionLoad
        :: JSVal
js_WebGPULoadActionLoad
 = jsNull

-- foreign import javascript unsafe "\"clear\""

--
-- js_WebGPULoadActionClear
--  :: JSVal
js_WebGPULoadActionClear :: JSVal
js_WebGPULoadActionClear = jsNull

data WebGPUStoreAction = WebGPUStoreActionDontcare
                       | WebGPUStoreActionStore
                       | WebGPUStoreActionMultisampleresolve
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUStoreAction where
        pToJSVal WebGPUStoreActionDontcare = js_WebGPUStoreActionDontcare
        pToJSVal WebGPUStoreActionStore = js_WebGPUStoreActionStore
        pToJSVal WebGPUStoreActionMultisampleresolve
          = js_WebGPUStoreActionMultisampleresolve

instance ToJSVal WebGPUStoreAction where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUStoreAction where
        pFromJSVal x
          | x `js_eq` js_WebGPUStoreActionDontcare =
            WebGPUStoreActionDontcare
        pFromJSVal x
          | x `js_eq` js_WebGPUStoreActionStore = WebGPUStoreActionStore
        pFromJSVal x
          | x `js_eq` js_WebGPUStoreActionMultisampleresolve =
            WebGPUStoreActionMultisampleresolve

instance FromJSVal WebGPUStoreAction where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"dontcare\""

--
-- js_WebGPUStoreActionDontcare
--  :: JSVal
js_WebGPUStoreActionDontcare :: JSVal
js_WebGPUStoreActionDontcare = jsNull

-- foreign import javascript unsafe "\"store\""

--
-- js_WebGPUStoreActionStore
--  :: JSVal
js_WebGPUStoreActionStore :: JSVal
js_WebGPUStoreActionStore = jsNull

-- foreign import javascript unsafe "\"multisampleresolve\""

--
-- js_WebGPUStoreActionMultisampleresolve
--  :: JSVal
js_WebGPUStoreActionMultisampleresolve :: JSVal
js_WebGPUStoreActionMultisampleresolve = jsNull

data WebGPUPrimitiveType = WebGPUPrimitiveTypePoint
                         | WebGPUPrimitiveTypeLine
                         | WebGPUPrimitiveTypeLinestrip
                         | WebGPUPrimitiveTypeTriangle
                         | WebGPUPrimitiveTypeTrianglestrip
                         deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUPrimitiveType where
        pToJSVal WebGPUPrimitiveTypePoint = js_WebGPUPrimitiveTypePoint
        pToJSVal WebGPUPrimitiveTypeLine = js_WebGPUPrimitiveTypeLine
        pToJSVal WebGPUPrimitiveTypeLinestrip
          = js_WebGPUPrimitiveTypeLinestrip
        pToJSVal WebGPUPrimitiveTypeTriangle
          = js_WebGPUPrimitiveTypeTriangle
        pToJSVal WebGPUPrimitiveTypeTrianglestrip
          = js_WebGPUPrimitiveTypeTrianglestrip

instance ToJSVal WebGPUPrimitiveType where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUPrimitiveType where
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypePoint = WebGPUPrimitiveTypePoint
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeLine = WebGPUPrimitiveTypeLine
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeLinestrip =
            WebGPUPrimitiveTypeLinestrip
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeTriangle =
            WebGPUPrimitiveTypeTriangle
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeTrianglestrip =
            WebGPUPrimitiveTypeTrianglestrip

instance FromJSVal WebGPUPrimitiveType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"point\""

--
-- js_WebGPUPrimitiveTypePoint
--  :: JSVal
js_WebGPUPrimitiveTypePoint :: JSVal
js_WebGPUPrimitiveTypePoint = jsNull

-- foreign import javascript unsafe "\"line\""

--
-- js_WebGPUPrimitiveTypeLine
--  :: JSVal
js_WebGPUPrimitiveTypeLine :: JSVal
js_WebGPUPrimitiveTypeLine = jsNull

-- foreign import javascript unsafe "\"linestrip\""

--
-- js_WebGPUPrimitiveTypeLinestrip
--  :: JSVal
js_WebGPUPrimitiveTypeLinestrip :: JSVal
js_WebGPUPrimitiveTypeLinestrip = jsNull

-- foreign import javascript unsafe "\"triangle\""

--
-- js_WebGPUPrimitiveTypeTriangle
--  :: JSVal
js_WebGPUPrimitiveTypeTriangle :: JSVal
js_WebGPUPrimitiveTypeTriangle = jsNull

-- foreign import javascript unsafe "\"trianglestrip\""

--
-- js_WebGPUPrimitiveTypeTrianglestrip
--  :: JSVal
js_WebGPUPrimitiveTypeTrianglestrip :: JSVal
js_WebGPUPrimitiveTypeTrianglestrip = jsNull

data WebGPUFunctionType = WebGPUFunctionTypeFragment
                        | WebGPUFunctionTypeVertex
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUFunctionType where
        pToJSVal WebGPUFunctionTypeFragment = js_WebGPUFunctionTypeFragment
        pToJSVal WebGPUFunctionTypeVertex   = js_WebGPUFunctionTypeVertex

instance ToJSVal WebGPUFunctionType where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUFunctionType where
        pFromJSVal x
          | x `js_eq` js_WebGPUFunctionTypeFragment =
            WebGPUFunctionTypeFragment
        pFromJSVal x
          | x `js_eq` js_WebGPUFunctionTypeVertex = WebGPUFunctionTypeVertex

instance FromJSVal WebGPUFunctionType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"fragment\""

--
-- js_WebGPUFunctionTypeFragment
--  :: JSVal
js_WebGPUFunctionTypeFragment :: JSVal
js_WebGPUFunctionTypeFragment = jsNull

-- foreign import javascript unsafe "\"vertex\""

--
-- js_WebGPUFunctionTypeVertex
--  :: JSVal
js_WebGPUFunctionTypeVertex :: JSVal
js_WebGPUFunctionTypeVertex = jsNull

data WebGPUStencilOperation = WebGPUStencilOperationKeep
                            | WebGPUStencilOperationZero
                            | WebGPUStencilOperationReplace
                            | WebGPUStencilOperationIncrementclamp
                            | WebGPUStencilOperationDecrementclamp
                            | WebGPUStencilOperationInvert
                            | WebGPUStencilOperationIncrementwrap
                            | WebGPUStencilOperationDecrementwrap
                            deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUStencilOperation where
        pToJSVal WebGPUStencilOperationKeep = js_WebGPUStencilOperationKeep
        pToJSVal WebGPUStencilOperationZero = js_WebGPUStencilOperationZero
        pToJSVal WebGPUStencilOperationReplace
          = js_WebGPUStencilOperationReplace
        pToJSVal WebGPUStencilOperationIncrementclamp
          = js_WebGPUStencilOperationIncrementclamp
        pToJSVal WebGPUStencilOperationDecrementclamp
          = js_WebGPUStencilOperationDecrementclamp
        pToJSVal WebGPUStencilOperationInvert
          = js_WebGPUStencilOperationInvert
        pToJSVal WebGPUStencilOperationIncrementwrap
          = js_WebGPUStencilOperationIncrementwrap
        pToJSVal WebGPUStencilOperationDecrementwrap
          = js_WebGPUStencilOperationDecrementwrap

instance ToJSVal WebGPUStencilOperation where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUStencilOperation where
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationKeep =
            WebGPUStencilOperationKeep
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationZero =
            WebGPUStencilOperationZero
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationReplace =
            WebGPUStencilOperationReplace
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationIncrementclamp =
            WebGPUStencilOperationIncrementclamp
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationDecrementclamp =
            WebGPUStencilOperationDecrementclamp
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationInvert =
            WebGPUStencilOperationInvert
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationIncrementwrap =
            WebGPUStencilOperationIncrementwrap
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationDecrementwrap =
            WebGPUStencilOperationDecrementwrap

instance FromJSVal WebGPUStencilOperation where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"keep\""

--
-- js_WebGPUStencilOperationKeep
--  :: JSVal
js_WebGPUStencilOperationKeep :: JSVal
js_WebGPUStencilOperationKeep = jsNull

-- foreign import javascript unsafe "\"zero\""

--
-- js_WebGPUStencilOperationZero
--  :: JSVal
js_WebGPUStencilOperationZero :: JSVal
js_WebGPUStencilOperationZero = jsNull

-- foreign import javascript unsafe "\"replace\""

--
-- js_WebGPUStencilOperationReplace
--  :: JSVal
js_WebGPUStencilOperationReplace :: JSVal
js_WebGPUStencilOperationReplace = jsNull

-- foreign import javascript unsafe "\"incrementclamp\""

--
-- js_WebGPUStencilOperationIncrementclamp
--  :: JSVal
js_WebGPUStencilOperationIncrementclamp :: JSVal
js_WebGPUStencilOperationIncrementclamp = jsNull

-- foreign import javascript unsafe "\"decrementclamp\""

--
-- js_WebGPUStencilOperationDecrementclamp
--  :: JSVal
js_WebGPUStencilOperationDecrementclamp :: JSVal
js_WebGPUStencilOperationDecrementclamp = jsNull

-- foreign import javascript unsafe "\"invert\""

--
-- js_WebGPUStencilOperationInvert
--  :: JSVal
js_WebGPUStencilOperationInvert :: JSVal
js_WebGPUStencilOperationInvert = jsNull

-- foreign import javascript unsafe "\"incrementwrap\""

--
-- js_WebGPUStencilOperationIncrementwrap
--  :: JSVal
js_WebGPUStencilOperationIncrementwrap :: JSVal
js_WebGPUStencilOperationIncrementwrap = jsNull

-- foreign import javascript unsafe "\"decrementwrap\""

--
-- js_WebGPUStencilOperationDecrementwrap
--  :: JSVal
js_WebGPUStencilOperationDecrementwrap :: JSVal
js_WebGPUStencilOperationDecrementwrap = jsNull

data WebGPUStatus = WebGPUStatusNotenqueued
                  | WebGPUStatusEnqueued
                  | WebGPUStatusCommitted
                  | WebGPUStatusScheduled
                  | WebGPUStatusCompleted
                  | WebGPUStatusError
                  deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUStatus where
        pToJSVal WebGPUStatusNotenqueued = js_WebGPUStatusNotenqueued
        pToJSVal WebGPUStatusEnqueued    = js_WebGPUStatusEnqueued
        pToJSVal WebGPUStatusCommitted   = js_WebGPUStatusCommitted
        pToJSVal WebGPUStatusScheduled   = js_WebGPUStatusScheduled
        pToJSVal WebGPUStatusCompleted   = js_WebGPUStatusCompleted
        pToJSVal WebGPUStatusError       = js_WebGPUStatusError

instance ToJSVal WebGPUStatus where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUStatus where
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusNotenqueued = WebGPUStatusNotenqueued
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusEnqueued = WebGPUStatusEnqueued
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusCommitted = WebGPUStatusCommitted
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusScheduled = WebGPUStatusScheduled
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusCompleted = WebGPUStatusCompleted
        pFromJSVal x | x `js_eq` js_WebGPUStatusError = WebGPUStatusError

instance FromJSVal WebGPUStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"notenqueued\""

--
-- js_WebGPUStatusNotenqueued
--  :: JSVal
js_WebGPUStatusNotenqueued :: JSVal
js_WebGPUStatusNotenqueued = jsNull

-- foreign import javascript unsafe "\"enqueued\""

--
-- js_WebGPUStatusEnqueued
--  :: JSVal
js_WebGPUStatusEnqueued :: JSVal
js_WebGPUStatusEnqueued = jsNull

-- foreign import javascript unsafe "\"committed\""

--
-- js_WebGPUStatusCommitted
--  :: JSVal
js_WebGPUStatusCommitted :: JSVal
js_WebGPUStatusCommitted = jsNull

-- foreign import javascript unsafe "\"scheduled\""

--
-- js_WebGPUStatusScheduled
--  :: JSVal
js_WebGPUStatusScheduled :: JSVal
js_WebGPUStatusScheduled = jsNull

-- foreign import javascript unsafe "\"completed\""

--
-- js_WebGPUStatusCompleted
--  :: JSVal
js_WebGPUStatusCompleted :: JSVal
js_WebGPUStatusCompleted = jsNull

-- foreign import javascript unsafe "\"error\""
--
-- js_WebGPUStatusError

--         :: JSVal
js_WebGPUStatusError
        :: JSVal
js_WebGPUStatusError
 = jsNull

data WebGPUSamplerAddressMode = WebGPUSamplerAddressModeClamptoedge
                              | WebGPUSamplerAddressModeMirrorclamptoedge
                              | WebGPUSamplerAddressModeRepeat
                              | WebGPUSamplerAddressModeMirrorrepeat
                              | WebGPUSamplerAddressModeClamptozero
                              deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUSamplerAddressMode where
        pToJSVal WebGPUSamplerAddressModeClamptoedge
          = js_WebGPUSamplerAddressModeClamptoedge
        pToJSVal WebGPUSamplerAddressModeMirrorclamptoedge
          = js_WebGPUSamplerAddressModeMirrorclamptoedge
        pToJSVal WebGPUSamplerAddressModeRepeat
          = js_WebGPUSamplerAddressModeRepeat
        pToJSVal WebGPUSamplerAddressModeMirrorrepeat
          = js_WebGPUSamplerAddressModeMirrorrepeat
        pToJSVal WebGPUSamplerAddressModeClamptozero
          = js_WebGPUSamplerAddressModeClamptozero

instance ToJSVal WebGPUSamplerAddressMode where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUSamplerAddressMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeClamptoedge =
            WebGPUSamplerAddressModeClamptoedge
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeMirrorclamptoedge =
            WebGPUSamplerAddressModeMirrorclamptoedge
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeRepeat =
            WebGPUSamplerAddressModeRepeat
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeMirrorrepeat =
            WebGPUSamplerAddressModeMirrorrepeat
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeClamptozero =
            WebGPUSamplerAddressModeClamptozero

instance FromJSVal WebGPUSamplerAddressMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"clamptoedge\""

--
-- js_WebGPUSamplerAddressModeClamptoedge
--  :: JSVal
js_WebGPUSamplerAddressModeClamptoedge :: JSVal
js_WebGPUSamplerAddressModeClamptoedge = jsNull

-- foreign import javascript unsafe "\"mirrorclamptoedge\""

--
-- js_WebGPUSamplerAddressModeMirrorclamptoedge
--  :: JSVal
js_WebGPUSamplerAddressModeMirrorclamptoedge :: JSVal
js_WebGPUSamplerAddressModeMirrorclamptoedge = jsNull

-- foreign import javascript unsafe "\"repeat\""

--
-- js_WebGPUSamplerAddressModeRepeat
--  :: JSVal
js_WebGPUSamplerAddressModeRepeat :: JSVal
js_WebGPUSamplerAddressModeRepeat = jsNull

-- foreign import javascript unsafe "\"mirrorrepeat\""

--
-- js_WebGPUSamplerAddressModeMirrorrepeat
--  :: JSVal
js_WebGPUSamplerAddressModeMirrorrepeat :: JSVal
js_WebGPUSamplerAddressModeMirrorrepeat = jsNull

-- foreign import javascript unsafe "\"clamptozero\""

--
-- js_WebGPUSamplerAddressModeClamptozero
--  :: JSVal
js_WebGPUSamplerAddressModeClamptozero :: JSVal
js_WebGPUSamplerAddressModeClamptozero = jsNull

data WebGPUSamplerMinMagFilter = WebGPUSamplerMinMagFilterNearest
                               | WebGPUSamplerMinMagFilterLinear
                               deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUSamplerMinMagFilter where
        pToJSVal WebGPUSamplerMinMagFilterNearest
          = js_WebGPUSamplerMinMagFilterNearest
        pToJSVal WebGPUSamplerMinMagFilterLinear
          = js_WebGPUSamplerMinMagFilterLinear

instance ToJSVal WebGPUSamplerMinMagFilter where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUSamplerMinMagFilter where
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMinMagFilterNearest =
            WebGPUSamplerMinMagFilterNearest
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMinMagFilterLinear =
            WebGPUSamplerMinMagFilterLinear

instance FromJSVal WebGPUSamplerMinMagFilter where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"nearest\""

--
-- js_WebGPUSamplerMinMagFilterNearest
--  :: JSVal
js_WebGPUSamplerMinMagFilterNearest :: JSVal
js_WebGPUSamplerMinMagFilterNearest = jsNull

-- foreign import javascript unsafe "\"linear\""

--
-- js_WebGPUSamplerMinMagFilterLinear
--  :: JSVal
js_WebGPUSamplerMinMagFilterLinear :: JSVal
js_WebGPUSamplerMinMagFilterLinear = jsNull

data WebGPUSamplerMipFilter = WebGPUSamplerMipFilterNotmipmapped
                            | WebGPUSamplerMipFilterNearest
                            | WebGPUSamplerMipFilterLinear
                            deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUSamplerMipFilter where
        pToJSVal WebGPUSamplerMipFilterNotmipmapped
          = js_WebGPUSamplerMipFilterNotmipmapped
        pToJSVal WebGPUSamplerMipFilterNearest
          = js_WebGPUSamplerMipFilterNearest
        pToJSVal WebGPUSamplerMipFilterLinear
          = js_WebGPUSamplerMipFilterLinear

instance ToJSVal WebGPUSamplerMipFilter where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUSamplerMipFilter where
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMipFilterNotmipmapped =
            WebGPUSamplerMipFilterNotmipmapped
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMipFilterNearest =
            WebGPUSamplerMipFilterNearest
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMipFilterLinear =
            WebGPUSamplerMipFilterLinear

instance FromJSVal WebGPUSamplerMipFilter where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"notmipmapped\""

--
-- js_WebGPUSamplerMipFilterNotmipmapped
--  :: JSVal
js_WebGPUSamplerMipFilterNotmipmapped :: JSVal
js_WebGPUSamplerMipFilterNotmipmapped = jsNull

-- foreign import javascript unsafe "\"nearest\""

--
-- js_WebGPUSamplerMipFilterNearest
--  :: JSVal
js_WebGPUSamplerMipFilterNearest :: JSVal
js_WebGPUSamplerMipFilterNearest = jsNull

-- foreign import javascript unsafe "\"linear\""

--
-- js_WebGPUSamplerMipFilterLinear
--  :: JSVal
js_WebGPUSamplerMipFilterLinear :: JSVal
js_WebGPUSamplerMipFilterLinear = jsNull

data WebGPUCullMode = WebGPUCullModeNone
                    | WebGPUCullModeFront
                    | WebGPUCullModeBack
                    deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUCullMode where
        pToJSVal WebGPUCullModeNone  = js_WebGPUCullModeNone
        pToJSVal WebGPUCullModeFront = js_WebGPUCullModeFront
        pToJSVal WebGPUCullModeBack  = js_WebGPUCullModeBack

instance ToJSVal WebGPUCullMode where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUCullMode where
        pFromJSVal x | x `js_eq` js_WebGPUCullModeNone = WebGPUCullModeNone
        pFromJSVal x
          | x `js_eq` js_WebGPUCullModeFront = WebGPUCullModeFront
        pFromJSVal x | x `js_eq` js_WebGPUCullModeBack = WebGPUCullModeBack

instance FromJSVal WebGPUCullMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"none\""
--
-- js_WebGPUCullModeNone

--         :: JSVal
js_WebGPUCullModeNone
        :: JSVal
js_WebGPUCullModeNone
 = jsNull

-- foreign import javascript unsafe "\"front\""
--
-- js_WebGPUCullModeFront

--         :: JSVal
js_WebGPUCullModeFront
        :: JSVal
js_WebGPUCullModeFront
 = jsNull

-- foreign import javascript unsafe "\"back\""
--
-- js_WebGPUCullModeBack

--         :: JSVal
js_WebGPUCullModeBack
        :: JSVal
js_WebGPUCullModeBack
 = jsNull

data WebGPUIndexType = WebGPUIndexTypeUint16
                     | WebGPUIndexTypeUint32
                     deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUIndexType where
        pToJSVal WebGPUIndexTypeUint16 = js_WebGPUIndexTypeUint16
        pToJSVal WebGPUIndexTypeUint32 = js_WebGPUIndexTypeUint32

instance ToJSVal WebGPUIndexType where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUIndexType where
        pFromJSVal x
          | x `js_eq` js_WebGPUIndexTypeUint16 = WebGPUIndexTypeUint16
        pFromJSVal x
          | x `js_eq` js_WebGPUIndexTypeUint32 = WebGPUIndexTypeUint32

instance FromJSVal WebGPUIndexType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"uint16\""

--
-- js_WebGPUIndexTypeUint16
--  :: JSVal
js_WebGPUIndexTypeUint16 :: JSVal
js_WebGPUIndexTypeUint16 = jsNull

-- foreign import javascript unsafe "\"uint32\""

--
-- js_WebGPUIndexTypeUint32
--  :: JSVal
js_WebGPUIndexTypeUint32 :: JSVal
js_WebGPUIndexTypeUint32 = jsNull

data WebGPUVisibilityResultMode = WebGPUVisibilityResultModeDisabled
                                | WebGPUVisibilityResultModeBoolean
                                | WebGPUVisibilityResultModeCounting
                                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUVisibilityResultMode where
        pToJSVal WebGPUVisibilityResultModeDisabled
          = js_WebGPUVisibilityResultModeDisabled
        pToJSVal WebGPUVisibilityResultModeBoolean
          = js_WebGPUVisibilityResultModeBoolean
        pToJSVal WebGPUVisibilityResultModeCounting
          = js_WebGPUVisibilityResultModeCounting

instance ToJSVal WebGPUVisibilityResultMode where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUVisibilityResultMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUVisibilityResultModeDisabled =
            WebGPUVisibilityResultModeDisabled
        pFromJSVal x
          | x `js_eq` js_WebGPUVisibilityResultModeBoolean =
            WebGPUVisibilityResultModeBoolean
        pFromJSVal x
          | x `js_eq` js_WebGPUVisibilityResultModeCounting =
            WebGPUVisibilityResultModeCounting

instance FromJSVal WebGPUVisibilityResultMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"disabled\""

--
-- js_WebGPUVisibilityResultModeDisabled
--  :: JSVal
js_WebGPUVisibilityResultModeDisabled :: JSVal
js_WebGPUVisibilityResultModeDisabled = jsNull

-- foreign import javascript unsafe "\"boolean\""

--
-- js_WebGPUVisibilityResultModeBoolean
--  :: JSVal
js_WebGPUVisibilityResultModeBoolean :: JSVal
js_WebGPUVisibilityResultModeBoolean = jsNull

-- foreign import javascript unsafe "\"counting\""

--
-- js_WebGPUVisibilityResultModeCounting
--  :: JSVal
js_WebGPUVisibilityResultModeCounting :: JSVal
js_WebGPUVisibilityResultModeCounting = jsNull

data WebGPUWinding = WebGPUWindingClockwise
                   | WebGPUWindingCounterclockwise
                   deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUWinding where
        pToJSVal WebGPUWindingClockwise = js_WebGPUWindingClockwise
        pToJSVal WebGPUWindingCounterclockwise
          = js_WebGPUWindingCounterclockwise

instance ToJSVal WebGPUWinding where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUWinding where
        pFromJSVal x
          | x `js_eq` js_WebGPUWindingClockwise = WebGPUWindingClockwise
        pFromJSVal x
          | x `js_eq` js_WebGPUWindingCounterclockwise =
            WebGPUWindingCounterclockwise

instance FromJSVal WebGPUWinding where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"clockwise\""

--
-- js_WebGPUWindingClockwise
--  :: JSVal
js_WebGPUWindingClockwise :: JSVal
js_WebGPUWindingClockwise = jsNull

-- foreign import javascript unsafe "\"counterclockwise\""

--
-- js_WebGPUWindingCounterclockwise
--  :: JSVal
js_WebGPUWindingCounterclockwise :: JSVal
js_WebGPUWindingCounterclockwise = jsNull

data WebGPUDepthClipMode = WebGPUDepthClipModeClip
                         | WebGPUDepthClipModeClamp
                         deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUDepthClipMode where
        pToJSVal WebGPUDepthClipModeClip  = js_WebGPUDepthClipModeClip
        pToJSVal WebGPUDepthClipModeClamp = js_WebGPUDepthClipModeClamp

instance ToJSVal WebGPUDepthClipMode where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUDepthClipMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUDepthClipModeClip = WebGPUDepthClipModeClip
        pFromJSVal x
          | x `js_eq` js_WebGPUDepthClipModeClamp = WebGPUDepthClipModeClamp

instance FromJSVal WebGPUDepthClipMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"clip\""

--
-- js_WebGPUDepthClipModeClip
--  :: JSVal
js_WebGPUDepthClipModeClip :: JSVal
js_WebGPUDepthClipModeClip = jsNull

-- foreign import javascript unsafe "\"clamp\""

--
-- js_WebGPUDepthClipModeClamp
--  :: JSVal
js_WebGPUDepthClipModeClamp :: JSVal
js_WebGPUDepthClipModeClamp = jsNull

data WebGPUTriangleFillMode = WebGPUTriangleFillModeFill
                            | WebGPUTriangleFillModeLines
                            deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUTriangleFillMode where
        pToJSVal WebGPUTriangleFillModeFill = js_WebGPUTriangleFillModeFill
        pToJSVal WebGPUTriangleFillModeLines
          = js_WebGPUTriangleFillModeLines

instance ToJSVal WebGPUTriangleFillMode where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUTriangleFillMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUTriangleFillModeFill =
            WebGPUTriangleFillModeFill
        pFromJSVal x
          | x `js_eq` js_WebGPUTriangleFillModeLines =
            WebGPUTriangleFillModeLines

instance FromJSVal WebGPUTriangleFillMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"fill\""

--
-- js_WebGPUTriangleFillModeFill
--  :: JSVal
js_WebGPUTriangleFillModeFill :: JSVal
js_WebGPUTriangleFillModeFill = jsNull

-- foreign import javascript unsafe "\"lines\""

--
-- js_WebGPUTriangleFillModeLines
--  :: JSVal
js_WebGPUTriangleFillModeLines :: JSVal
js_WebGPUTriangleFillModeLines = jsNull

data WebGPUCPUCacheMode = WebGPUCPUCacheModeDefaultcache
                        | WebGPUCPUCacheModeWritecombined
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUCPUCacheMode where
        pToJSVal WebGPUCPUCacheModeDefaultcache
          = js_WebGPUCPUCacheModeDefaultcache
        pToJSVal WebGPUCPUCacheModeWritecombined
          = js_WebGPUCPUCacheModeWritecombined

instance ToJSVal WebGPUCPUCacheMode where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUCPUCacheMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUCPUCacheModeDefaultcache =
            WebGPUCPUCacheModeDefaultcache
        pFromJSVal x
          | x `js_eq` js_WebGPUCPUCacheModeWritecombined =
            WebGPUCPUCacheModeWritecombined

instance FromJSVal WebGPUCPUCacheMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"defaultcache\""

--
-- js_WebGPUCPUCacheModeDefaultcache
--  :: JSVal
js_WebGPUCPUCacheModeDefaultcache :: JSVal
js_WebGPUCPUCacheModeDefaultcache = jsNull

-- foreign import javascript unsafe "\"writecombined\""

--
-- js_WebGPUCPUCacheModeWritecombined
--  :: JSVal
js_WebGPUCPUCacheModeWritecombined :: JSVal
js_WebGPUCPUCacheModeWritecombined = jsNull

data WebGPUStorageMode = WebGPUStorageModeShared
                       | WebGPUStorageModeManaged
                       | WebGPUStorageModePrivate
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUStorageMode where
        pToJSVal WebGPUStorageModeShared  = js_WebGPUStorageModeShared
        pToJSVal WebGPUStorageModeManaged = js_WebGPUStorageModeManaged
        pToJSVal WebGPUStorageModePrivate = js_WebGPUStorageModePrivate

instance ToJSVal WebGPUStorageMode where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUStorageMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUStorageModeShared = WebGPUStorageModeShared
        pFromJSVal x
          | x `js_eq` js_WebGPUStorageModeManaged = WebGPUStorageModeManaged
        pFromJSVal x
          | x `js_eq` js_WebGPUStorageModePrivate = WebGPUStorageModePrivate

instance FromJSVal WebGPUStorageMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"shared\""

--
-- js_WebGPUStorageModeShared
--  :: JSVal
js_WebGPUStorageModeShared :: JSVal
js_WebGPUStorageModeShared = jsNull

-- foreign import javascript unsafe "\"managed\""

--
-- js_WebGPUStorageModeManaged
--  :: JSVal
js_WebGPUStorageModeManaged :: JSVal
js_WebGPUStorageModeManaged = jsNull

-- foreign import javascript unsafe "\"private\""

--
-- js_WebGPUStorageModePrivate
--  :: JSVal
js_WebGPUStorageModePrivate :: JSVal
js_WebGPUStorageModePrivate = jsNull

data WebGPUResourceOptions = WebGPUResourceOptionsCpucachemodedefaultcache
                           | WebGPUResourceOptionsCpucachemodewritecombined
                           | WebGPUResourceOptionsStoragemodeshared
                           | WebGPUResourceOptionsStoragemodemanaged
                           | WebGPUResourceOptionsStoragemodeprivate
                           | WebGPUResourceOptionsOptioncpucachemodedefaultcache
                           | WebGPUResourceOptionsOptioncpucachemodewritecombined
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUResourceOptions where
        pToJSVal WebGPUResourceOptionsCpucachemodedefaultcache
          = js_WebGPUResourceOptionsCpucachemodedefaultcache
        pToJSVal WebGPUResourceOptionsCpucachemodewritecombined
          = js_WebGPUResourceOptionsCpucachemodewritecombined
        pToJSVal WebGPUResourceOptionsStoragemodeshared
          = js_WebGPUResourceOptionsStoragemodeshared
        pToJSVal WebGPUResourceOptionsStoragemodemanaged
          = js_WebGPUResourceOptionsStoragemodemanaged
        pToJSVal WebGPUResourceOptionsStoragemodeprivate
          = js_WebGPUResourceOptionsStoragemodeprivate
        pToJSVal WebGPUResourceOptionsOptioncpucachemodedefaultcache
          = js_WebGPUResourceOptionsOptioncpucachemodedefaultcache
        pToJSVal WebGPUResourceOptionsOptioncpucachemodewritecombined
          = js_WebGPUResourceOptionsOptioncpucachemodewritecombined

instance ToJSVal WebGPUResourceOptions where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUResourceOptions where
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsCpucachemodedefaultcache =
            WebGPUResourceOptionsCpucachemodedefaultcache
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsCpucachemodewritecombined =
            WebGPUResourceOptionsCpucachemodewritecombined
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsStoragemodeshared =
            WebGPUResourceOptionsStoragemodeshared
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsStoragemodemanaged =
            WebGPUResourceOptionsStoragemodemanaged
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsStoragemodeprivate =
            WebGPUResourceOptionsStoragemodeprivate
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsOptioncpucachemodedefaultcache
            = WebGPUResourceOptionsOptioncpucachemodedefaultcache
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsOptioncpucachemodewritecombined
            = WebGPUResourceOptionsOptioncpucachemodewritecombined

instance FromJSVal WebGPUResourceOptions where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"cpucachemodedefaultcache\""

--
-- js_WebGPUResourceOptionsCpucachemodedefaultcache
--  :: JSVal
js_WebGPUResourceOptionsCpucachemodedefaultcache :: JSVal
js_WebGPUResourceOptionsCpucachemodedefaultcache = jsNull

-- foreign import javascript unsafe "\"cpucachemodewritecombined\""

--
-- js_WebGPUResourceOptionsCpucachemodewritecombined
--  :: JSVal
js_WebGPUResourceOptionsCpucachemodewritecombined :: JSVal
js_WebGPUResourceOptionsCpucachemodewritecombined = jsNull

-- foreign import javascript unsafe "\"storagemodeshared\""

--
-- js_WebGPUResourceOptionsStoragemodeshared
--  :: JSVal
js_WebGPUResourceOptionsStoragemodeshared :: JSVal
js_WebGPUResourceOptionsStoragemodeshared = jsNull

-- foreign import javascript unsafe "\"storagemodemanaged\""

--
-- js_WebGPUResourceOptionsStoragemodemanaged
--  :: JSVal
js_WebGPUResourceOptionsStoragemodemanaged :: JSVal
js_WebGPUResourceOptionsStoragemodemanaged = jsNull

-- foreign import javascript unsafe "\"storagemodeprivate\""

--
-- js_WebGPUResourceOptionsStoragemodeprivate
--  :: JSVal
js_WebGPUResourceOptionsStoragemodeprivate :: JSVal
js_WebGPUResourceOptionsStoragemodeprivate = jsNull

-- foreign import javascript unsafe
--         "\"optioncpucachemodedefaultcache\""
--         js_WebGPUResourceOptionsOptioncpucachemodedefaultcache :: JSVal
js_WebGPUResourceOptionsOptioncpucachemodedefaultcache :: JSVal
js_WebGPUResourceOptionsOptioncpucachemodedefaultcache = jsNull

-- foreign import javascript unsafe
--         "\"optioncpucachemodewritecombined\""
--         js_WebGPUResourceOptionsOptioncpucachemodewritecombined :: JSVal
js_WebGPUResourceOptionsOptioncpucachemodewritecombined :: JSVal
js_WebGPUResourceOptionsOptioncpucachemodewritecombined = jsNull

data WebGPUTextureUsage = WebGPUTextureUsageUnknown
                        | WebGPUTextureUsageShaderread
                        | WebGPUTextureUsageShaderwrite
                        | WebGPUTextureUsageRendertarget
                        | WebGPUTextureUsagePixelformatview
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUTextureUsage where
        pToJSVal WebGPUTextureUsageUnknown = js_WebGPUTextureUsageUnknown
        pToJSVal WebGPUTextureUsageShaderread
          = js_WebGPUTextureUsageShaderread
        pToJSVal WebGPUTextureUsageShaderwrite
          = js_WebGPUTextureUsageShaderwrite
        pToJSVal WebGPUTextureUsageRendertarget
          = js_WebGPUTextureUsageRendertarget
        pToJSVal WebGPUTextureUsagePixelformatview
          = js_WebGPUTextureUsagePixelformatview

instance ToJSVal WebGPUTextureUsage where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUTextureUsage where
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageUnknown =
            WebGPUTextureUsageUnknown
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageShaderread =
            WebGPUTextureUsageShaderread
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageShaderwrite =
            WebGPUTextureUsageShaderwrite
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageRendertarget =
            WebGPUTextureUsageRendertarget
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsagePixelformatview =
            WebGPUTextureUsagePixelformatview

instance FromJSVal WebGPUTextureUsage where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"unknown\""

--
-- js_WebGPUTextureUsageUnknown
--  :: JSVal
js_WebGPUTextureUsageUnknown :: JSVal
js_WebGPUTextureUsageUnknown = jsNull

-- foreign import javascript unsafe "\"shaderread\""

--
-- js_WebGPUTextureUsageShaderread
--  :: JSVal
js_WebGPUTextureUsageShaderread :: JSVal
js_WebGPUTextureUsageShaderread = jsNull

-- foreign import javascript unsafe "\"shaderwrite\""

--
-- js_WebGPUTextureUsageShaderwrite
--  :: JSVal
js_WebGPUTextureUsageShaderwrite :: JSVal
js_WebGPUTextureUsageShaderwrite = jsNull

-- foreign import javascript unsafe "\"rendertarget\""

--
-- js_WebGPUTextureUsageRendertarget
--  :: JSVal
js_WebGPUTextureUsageRendertarget :: JSVal
js_WebGPUTextureUsageRendertarget = jsNull

-- foreign import javascript unsafe "\"pixelformatview\""

--
-- js_WebGPUTextureUsagePixelformatview
--  :: JSVal
js_WebGPUTextureUsagePixelformatview :: JSVal
js_WebGPUTextureUsagePixelformatview = jsNull

data WebGPUBlendOperation = WebGPUBlendOperationAdd
                          | WebGPUBlendOperationSubtract
                          | WebGPUBlendOperationReversesubtract
                          | WebGPUBlendOperationMin
                          | WebGPUBlendOperationMax
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUBlendOperation where
        pToJSVal WebGPUBlendOperationAdd = js_WebGPUBlendOperationAdd
        pToJSVal WebGPUBlendOperationSubtract
          = js_WebGPUBlendOperationSubtract
        pToJSVal WebGPUBlendOperationReversesubtract
          = js_WebGPUBlendOperationReversesubtract
        pToJSVal WebGPUBlendOperationMin = js_WebGPUBlendOperationMin
        pToJSVal WebGPUBlendOperationMax = js_WebGPUBlendOperationMax

instance ToJSVal WebGPUBlendOperation where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUBlendOperation where
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationAdd = WebGPUBlendOperationAdd
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationSubtract =
            WebGPUBlendOperationSubtract
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationReversesubtract =
            WebGPUBlendOperationReversesubtract
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationMin = WebGPUBlendOperationMin
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationMax = WebGPUBlendOperationMax

instance FromJSVal WebGPUBlendOperation where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"add\""

--
-- js_WebGPUBlendOperationAdd
--  :: JSVal
js_WebGPUBlendOperationAdd :: JSVal
js_WebGPUBlendOperationAdd = jsNull

-- foreign import javascript unsafe "\"subtract\""

--
-- js_WebGPUBlendOperationSubtract
--  :: JSVal
js_WebGPUBlendOperationSubtract :: JSVal
js_WebGPUBlendOperationSubtract = jsNull

-- foreign import javascript unsafe "\"reversesubtract\""

--
-- js_WebGPUBlendOperationReversesubtract
--  :: JSVal
js_WebGPUBlendOperationReversesubtract :: JSVal
js_WebGPUBlendOperationReversesubtract = jsNull

-- foreign import javascript unsafe "\"min\""

--
-- js_WebGPUBlendOperationMin
--  :: JSVal
js_WebGPUBlendOperationMin :: JSVal
js_WebGPUBlendOperationMin = jsNull

-- foreign import javascript unsafe "\"max\""

--
-- js_WebGPUBlendOperationMax
--  :: JSVal
js_WebGPUBlendOperationMax :: JSVal
js_WebGPUBlendOperationMax = jsNull

data WebGPUBlendFactor = WebGPUBlendFactorZero
                       | WebGPUBlendFactorOne
                       | WebGPUBlendFactorSourcecolor
                       | WebGPUBlendFactorOneminussourcecolor
                       | WebGPUBlendFactorSourcealpha
                       | WebGPUBlendFactorOneminussourcealpha
                       | WebGPUBlendFactorDestinationcolor
                       | WebGPUBlendFactorOneminusdestinationcolor
                       | WebGPUBlendFactorDestinationalpha
                       | WebGPUBlendFactorOneminusdestinationalpha
                       | WebGPUBlendFactorSourcealphasaturated
                       | WebGPUBlendFactorBlendcolor
                       | WebGPUBlendFactorOneminusblendcolor
                       | WebGPUBlendFactorBlendalpha
                       | WebGPUBlendFactorOneminusblendalpha
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUBlendFactor where
        pToJSVal WebGPUBlendFactorZero = js_WebGPUBlendFactorZero
        pToJSVal WebGPUBlendFactorOne = js_WebGPUBlendFactorOne
        pToJSVal WebGPUBlendFactorSourcecolor
          = js_WebGPUBlendFactorSourcecolor
        pToJSVal WebGPUBlendFactorOneminussourcecolor
          = js_WebGPUBlendFactorOneminussourcecolor
        pToJSVal WebGPUBlendFactorSourcealpha
          = js_WebGPUBlendFactorSourcealpha
        pToJSVal WebGPUBlendFactorOneminussourcealpha
          = js_WebGPUBlendFactorOneminussourcealpha
        pToJSVal WebGPUBlendFactorDestinationcolor
          = js_WebGPUBlendFactorDestinationcolor
        pToJSVal WebGPUBlendFactorOneminusdestinationcolor
          = js_WebGPUBlendFactorOneminusdestinationcolor
        pToJSVal WebGPUBlendFactorDestinationalpha
          = js_WebGPUBlendFactorDestinationalpha
        pToJSVal WebGPUBlendFactorOneminusdestinationalpha
          = js_WebGPUBlendFactorOneminusdestinationalpha
        pToJSVal WebGPUBlendFactorSourcealphasaturated
          = js_WebGPUBlendFactorSourcealphasaturated
        pToJSVal WebGPUBlendFactorBlendcolor
          = js_WebGPUBlendFactorBlendcolor
        pToJSVal WebGPUBlendFactorOneminusblendcolor
          = js_WebGPUBlendFactorOneminusblendcolor
        pToJSVal WebGPUBlendFactorBlendalpha
          = js_WebGPUBlendFactorBlendalpha
        pToJSVal WebGPUBlendFactorOneminusblendalpha
          = js_WebGPUBlendFactorOneminusblendalpha

instance ToJSVal WebGPUBlendFactor where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUBlendFactor where
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorZero = WebGPUBlendFactorZero
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOne = WebGPUBlendFactorOne
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorSourcecolor =
            WebGPUBlendFactorSourcecolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminussourcecolor =
            WebGPUBlendFactorOneminussourcecolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorSourcealpha =
            WebGPUBlendFactorSourcealpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminussourcealpha =
            WebGPUBlendFactorOneminussourcealpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorDestinationcolor =
            WebGPUBlendFactorDestinationcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusdestinationcolor =
            WebGPUBlendFactorOneminusdestinationcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorDestinationalpha =
            WebGPUBlendFactorDestinationalpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusdestinationalpha =
            WebGPUBlendFactorOneminusdestinationalpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorSourcealphasaturated =
            WebGPUBlendFactorSourcealphasaturated
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorBlendcolor =
            WebGPUBlendFactorBlendcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusblendcolor =
            WebGPUBlendFactorOneminusblendcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorBlendalpha =
            WebGPUBlendFactorBlendalpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusblendalpha =
            WebGPUBlendFactorOneminusblendalpha

instance FromJSVal WebGPUBlendFactor where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"zero\""

--
-- js_WebGPUBlendFactorZero
--  :: JSVal
js_WebGPUBlendFactorZero :: JSVal
js_WebGPUBlendFactorZero = jsNull

-- foreign import javascript unsafe "\"one\""
--
-- js_WebGPUBlendFactorOne

--         :: JSVal
js_WebGPUBlendFactorOne
        :: JSVal
js_WebGPUBlendFactorOne
 = jsNull

-- foreign import javascript unsafe "\"sourcecolor\""

--
-- js_WebGPUBlendFactorSourcecolor
--  :: JSVal
js_WebGPUBlendFactorSourcecolor :: JSVal
js_WebGPUBlendFactorSourcecolor = jsNull

-- foreign import javascript unsafe "\"oneminussourcecolor\""

--
-- js_WebGPUBlendFactorOneminussourcecolor
--  :: JSVal
js_WebGPUBlendFactorOneminussourcecolor :: JSVal
js_WebGPUBlendFactorOneminussourcecolor = jsNull

-- foreign import javascript unsafe "\"sourcealpha\""

--
-- js_WebGPUBlendFactorSourcealpha
--  :: JSVal
js_WebGPUBlendFactorSourcealpha :: JSVal
js_WebGPUBlendFactorSourcealpha = jsNull

-- foreign import javascript unsafe "\"oneminussourcealpha\""

--
-- js_WebGPUBlendFactorOneminussourcealpha
--  :: JSVal
js_WebGPUBlendFactorOneminussourcealpha :: JSVal
js_WebGPUBlendFactorOneminussourcealpha = jsNull

-- foreign import javascript unsafe "\"destinationcolor\""

--
-- js_WebGPUBlendFactorDestinationcolor
--  :: JSVal
js_WebGPUBlendFactorDestinationcolor :: JSVal
js_WebGPUBlendFactorDestinationcolor = jsNull

-- foreign import javascript unsafe "\"oneminusdestinationcolor\""

--
-- js_WebGPUBlendFactorOneminusdestinationcolor
--  :: JSVal
js_WebGPUBlendFactorOneminusdestinationcolor :: JSVal
js_WebGPUBlendFactorOneminusdestinationcolor = jsNull

-- foreign import javascript unsafe "\"destinationalpha\""

--
-- js_WebGPUBlendFactorDestinationalpha
--  :: JSVal
js_WebGPUBlendFactorDestinationalpha :: JSVal
js_WebGPUBlendFactorDestinationalpha = jsNull

-- foreign import javascript unsafe "\"oneminusdestinationalpha\""

--
-- js_WebGPUBlendFactorOneminusdestinationalpha
--  :: JSVal
js_WebGPUBlendFactorOneminusdestinationalpha :: JSVal
js_WebGPUBlendFactorOneminusdestinationalpha = jsNull

-- foreign import javascript unsafe "\"sourcealphasaturated\""

--
-- js_WebGPUBlendFactorSourcealphasaturated
--  :: JSVal
js_WebGPUBlendFactorSourcealphasaturated :: JSVal
js_WebGPUBlendFactorSourcealphasaturated = jsNull

-- foreign import javascript unsafe "\"blendcolor\""

--
-- js_WebGPUBlendFactorBlendcolor
--  :: JSVal
js_WebGPUBlendFactorBlendcolor :: JSVal
js_WebGPUBlendFactorBlendcolor = jsNull

-- foreign import javascript unsafe "\"oneminusblendcolor\""

--
-- js_WebGPUBlendFactorOneminusblendcolor
--  :: JSVal
js_WebGPUBlendFactorOneminusblendcolor :: JSVal
js_WebGPUBlendFactorOneminusblendcolor = jsNull

-- foreign import javascript unsafe "\"blendalpha\""

--
-- js_WebGPUBlendFactorBlendalpha
--  :: JSVal
js_WebGPUBlendFactorBlendalpha :: JSVal
js_WebGPUBlendFactorBlendalpha = jsNull

-- foreign import javascript unsafe "\"oneminusblendalpha\""

--
-- js_WebGPUBlendFactorOneminusblendalpha
--  :: JSVal
js_WebGPUBlendFactorOneminusblendalpha :: JSVal
js_WebGPUBlendFactorOneminusblendalpha = jsNull

data WebGPUColorWriteMask = WebGPUColorWriteMaskNone
                          | WebGPUColorWriteMaskRed
                          | WebGPUColorWriteMaskGreen
                          | WebGPUColorWriteMaskBlue
                          | WebGPUColorWriteMaskAlpha
                          | WebGPUColorWriteMaskAll
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUColorWriteMask where
        pToJSVal WebGPUColorWriteMaskNone  = js_WebGPUColorWriteMaskNone
        pToJSVal WebGPUColorWriteMaskRed   = js_WebGPUColorWriteMaskRed
        pToJSVal WebGPUColorWriteMaskGreen = js_WebGPUColorWriteMaskGreen
        pToJSVal WebGPUColorWriteMaskBlue  = js_WebGPUColorWriteMaskBlue
        pToJSVal WebGPUColorWriteMaskAlpha = js_WebGPUColorWriteMaskAlpha
        pToJSVal WebGPUColorWriteMaskAll   = js_WebGPUColorWriteMaskAll

instance ToJSVal WebGPUColorWriteMask where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUColorWriteMask where
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskNone = WebGPUColorWriteMaskNone
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskRed = WebGPUColorWriteMaskRed
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskGreen =
            WebGPUColorWriteMaskGreen
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskBlue = WebGPUColorWriteMaskBlue
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskAlpha =
            WebGPUColorWriteMaskAlpha
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskAll = WebGPUColorWriteMaskAll

instance FromJSVal WebGPUColorWriteMask where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"none\""

--
-- js_WebGPUColorWriteMaskNone
--  :: JSVal
js_WebGPUColorWriteMaskNone :: JSVal
js_WebGPUColorWriteMaskNone = jsNull

-- foreign import javascript unsafe "\"red\""

--
-- js_WebGPUColorWriteMaskRed
--  :: JSVal
js_WebGPUColorWriteMaskRed :: JSVal
js_WebGPUColorWriteMaskRed = jsNull

-- foreign import javascript unsafe "\"green\""

--
-- js_WebGPUColorWriteMaskGreen
--  :: JSVal
js_WebGPUColorWriteMaskGreen :: JSVal
js_WebGPUColorWriteMaskGreen = jsNull

-- foreign import javascript unsafe "\"blue\""

--
-- js_WebGPUColorWriteMaskBlue
--  :: JSVal
js_WebGPUColorWriteMaskBlue :: JSVal
js_WebGPUColorWriteMaskBlue = jsNull

-- foreign import javascript unsafe "\"alpha\""

--
-- js_WebGPUColorWriteMaskAlpha
--  :: JSVal
js_WebGPUColorWriteMaskAlpha :: JSVal
js_WebGPUColorWriteMaskAlpha = jsNull

-- foreign import javascript unsafe "\"all\""

--
-- js_WebGPUColorWriteMaskAll
--  :: JSVal
js_WebGPUColorWriteMaskAll :: JSVal
js_WebGPUColorWriteMaskAll = jsNull

data WebGPUMultisampleDepthResolveFilter = WebGPUMultisampleDepthResolveFilterSample0
                                         | WebGPUMultisampleDepthResolveFilterMin
                                         | WebGPUMultisampleDepthResolveFilterMax
                                         deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUMultisampleDepthResolveFilter where
        pToJSVal WebGPUMultisampleDepthResolveFilterSample0
          = js_WebGPUMultisampleDepthResolveFilterSample0
        pToJSVal WebGPUMultisampleDepthResolveFilterMin
          = js_WebGPUMultisampleDepthResolveFilterMin
        pToJSVal WebGPUMultisampleDepthResolveFilterMax
          = js_WebGPUMultisampleDepthResolveFilterMax

instance ToJSVal WebGPUMultisampleDepthResolveFilter where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUMultisampleDepthResolveFilter where
        pFromJSVal x
          | x `js_eq` js_WebGPUMultisampleDepthResolveFilterSample0 =
            WebGPUMultisampleDepthResolveFilterSample0
        pFromJSVal x
          | x `js_eq` js_WebGPUMultisampleDepthResolveFilterMin =
            WebGPUMultisampleDepthResolveFilterMin
        pFromJSVal x
          | x `js_eq` js_WebGPUMultisampleDepthResolveFilterMax =
            WebGPUMultisampleDepthResolveFilterMax

instance FromJSVal WebGPUMultisampleDepthResolveFilter where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"sample0\""

--
-- js_WebGPUMultisampleDepthResolveFilterSample0
--  :: JSVal
js_WebGPUMultisampleDepthResolveFilterSample0 :: JSVal
js_WebGPUMultisampleDepthResolveFilterSample0 = jsNull

-- foreign import javascript unsafe "\"min\""

--
-- js_WebGPUMultisampleDepthResolveFilterMin
--  :: JSVal
js_WebGPUMultisampleDepthResolveFilterMin :: JSVal
js_WebGPUMultisampleDepthResolveFilterMin = jsNull

-- foreign import javascript unsafe "\"max\""

--
-- js_WebGPUMultisampleDepthResolveFilterMax
--  :: JSVal
js_WebGPUMultisampleDepthResolveFilterMax :: JSVal
js_WebGPUMultisampleDepthResolveFilterMax = jsNull

data WebGPUFeatureSet = WebGPUFeatureSetLevel1
                      | WebGPUFeatureSetLevel2
                      deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal WebGPUFeatureSet where
        pToJSVal WebGPUFeatureSetLevel1 = js_WebGPUFeatureSetLevel1
        pToJSVal WebGPUFeatureSetLevel2 = js_WebGPUFeatureSetLevel2

instance ToJSVal WebGPUFeatureSet where
        toJSVal = return . pToJSVal

instance PFromJSVal WebGPUFeatureSet where
        pFromJSVal x
          | x `js_eq` js_WebGPUFeatureSetLevel1 = WebGPUFeatureSetLevel1
        pFromJSVal x
          | x `js_eq` js_WebGPUFeatureSetLevel2 = WebGPUFeatureSetLevel2

instance FromJSVal WebGPUFeatureSet where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"level1\""

--
-- js_WebGPUFeatureSetLevel1
--  :: JSVal
js_WebGPUFeatureSetLevel1 :: JSVal
js_WebGPUFeatureSetLevel1 = jsNull

-- foreign import javascript unsafe "\"level2\""

--
-- js_WebGPUFeatureSetLevel2
--  :: JSVal
js_WebGPUFeatureSetLevel2 :: JSVal
js_WebGPUFeatureSetLevel2 = jsNull

data VideoPresentationMode = VideoPresentationModeFullscreen
                           | VideoPresentationModePictureInPicture
                           | VideoPresentationModeInline
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal VideoPresentationMode where
        pToJSVal VideoPresentationModeFullscreen
          = js_VideoPresentationModeFullscreen
        pToJSVal VideoPresentationModePictureInPicture
          = js_VideoPresentationModePictureInPicture
        pToJSVal VideoPresentationModeInline
          = js_VideoPresentationModeInline

instance ToJSVal VideoPresentationMode where
        toJSVal = return . pToJSVal

instance PFromJSVal VideoPresentationMode where
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModeFullscreen =
            VideoPresentationModeFullscreen
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModePictureInPicture =
            VideoPresentationModePictureInPicture
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModeInline =
            VideoPresentationModeInline

instance FromJSVal VideoPresentationMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"fullscreen\""

--
-- js_VideoPresentationModeFullscreen
--  :: JSVal
js_VideoPresentationModeFullscreen :: JSVal
js_VideoPresentationModeFullscreen = jsNull

-- foreign import javascript unsafe "\"picture-in-picture\""

--
-- js_VideoPresentationModePictureInPicture
--  :: JSVal
js_VideoPresentationModePictureInPicture :: JSVal
js_VideoPresentationModePictureInPicture = jsNull

-- foreign import javascript unsafe "\"inline\""

--
-- js_VideoPresentationModeInline
--  :: JSVal
js_VideoPresentationModeInline :: JSVal
js_VideoPresentationModeInline = jsNull

data TextTrackMode = TextTrackModeDisabled
                   | TextTrackModeHidden
                   | TextTrackModeShowing
                   deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal TextTrackMode where
        pToJSVal TextTrackModeDisabled = js_TextTrackModeDisabled
        pToJSVal TextTrackModeHidden   = js_TextTrackModeHidden
        pToJSVal TextTrackModeShowing  = js_TextTrackModeShowing

instance ToJSVal TextTrackMode where
        toJSVal = return . pToJSVal

instance PFromJSVal TextTrackMode where
        pFromJSVal x
          | x `js_eq` js_TextTrackModeDisabled = TextTrackModeDisabled
        pFromJSVal x
          | x `js_eq` js_TextTrackModeHidden = TextTrackModeHidden
        pFromJSVal x
          | x `js_eq` js_TextTrackModeShowing = TextTrackModeShowing

instance FromJSVal TextTrackMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"disabled\""

--
-- js_TextTrackModeDisabled
--  :: JSVal
js_TextTrackModeDisabled :: JSVal
js_TextTrackModeDisabled = jsNull

-- foreign import javascript unsafe "\"hidden\""

--
-- js_TextTrackModeHidden
--  :: JSVal
js_TextTrackModeHidden :: JSVal
js_TextTrackModeHidden = jsNull

-- foreign import javascript unsafe "\"showing\""

--
-- js_TextTrackModeShowing
--  :: JSVal
js_TextTrackModeShowing :: JSVal
js_TextTrackModeShowing = jsNull

data TextTrackKind = TextTrackKindSubtitles
                   | TextTrackKindCaptions
                   | TextTrackKindDescriptions
                   | TextTrackKindChapters
                   | TextTrackKindMetadata
                   | TextTrackKindForced
                   deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal TextTrackKind where
        pToJSVal TextTrackKindSubtitles    = js_TextTrackKindSubtitles
        pToJSVal TextTrackKindCaptions     = js_TextTrackKindCaptions
        pToJSVal TextTrackKindDescriptions = js_TextTrackKindDescriptions
        pToJSVal TextTrackKindChapters     = js_TextTrackKindChapters
        pToJSVal TextTrackKindMetadata     = js_TextTrackKindMetadata
        pToJSVal TextTrackKindForced       = js_TextTrackKindForced

instance ToJSVal TextTrackKind where
        toJSVal = return . pToJSVal

instance PFromJSVal TextTrackKind where
        pFromJSVal x
          | x `js_eq` js_TextTrackKindSubtitles = TextTrackKindSubtitles
        pFromJSVal x
          | x `js_eq` js_TextTrackKindCaptions = TextTrackKindCaptions
        pFromJSVal x
          | x `js_eq` js_TextTrackKindDescriptions =
            TextTrackKindDescriptions
        pFromJSVal x
          | x `js_eq` js_TextTrackKindChapters = TextTrackKindChapters
        pFromJSVal x
          | x `js_eq` js_TextTrackKindMetadata = TextTrackKindMetadata
        pFromJSVal x
          | x `js_eq` js_TextTrackKindForced = TextTrackKindForced

instance FromJSVal TextTrackKind where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"subtitles\""

--
-- js_TextTrackKindSubtitles
--  :: JSVal
js_TextTrackKindSubtitles :: JSVal
js_TextTrackKindSubtitles = jsNull

-- foreign import javascript unsafe "\"captions\""

--
-- js_TextTrackKindCaptions
--  :: JSVal
js_TextTrackKindCaptions :: JSVal
js_TextTrackKindCaptions = jsNull

-- foreign import javascript unsafe "\"descriptions\""

--
-- js_TextTrackKindDescriptions
--  :: JSVal
js_TextTrackKindDescriptions :: JSVal
js_TextTrackKindDescriptions = jsNull

-- foreign import javascript unsafe "\"chapters\""

--
-- js_TextTrackKindChapters
--  :: JSVal
js_TextTrackKindChapters :: JSVal
js_TextTrackKindChapters = jsNull

-- foreign import javascript unsafe "\"metadata\""

--
-- js_TextTrackKindMetadata
--  :: JSVal
js_TextTrackKindMetadata :: JSVal
js_TextTrackKindMetadata = jsNull

-- foreign import javascript unsafe "\"forced\""

--
-- js_TextTrackKindForced
--  :: JSVal
js_TextTrackKindForced :: JSVal
js_TextTrackKindForced = jsNull

data ApplePayErrorCode = ApplePayErrorCodeUnknown
                       | ApplePayErrorCodeShippingContactInvalid
                       | ApplePayErrorCodeBillingContactInvalid
                       | ApplePayErrorCodeAddressUnservicable
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayErrorCode where
        pToJSVal ApplePayErrorCodeUnknown = js_ApplePayErrorCodeUnknown
        pToJSVal ApplePayErrorCodeShippingContactInvalid
          = js_ApplePayErrorCodeShippingContactInvalid
        pToJSVal ApplePayErrorCodeBillingContactInvalid
          = js_ApplePayErrorCodeBillingContactInvalid
        pToJSVal ApplePayErrorCodeAddressUnservicable
          = js_ApplePayErrorCodeAddressUnservicable

instance ToJSVal ApplePayErrorCode where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayErrorCode where
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeUnknown = ApplePayErrorCodeUnknown
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeShippingContactInvalid =
            ApplePayErrorCodeShippingContactInvalid
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeBillingContactInvalid =
            ApplePayErrorCodeBillingContactInvalid
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeAddressUnservicable =
            ApplePayErrorCodeAddressUnservicable

instance FromJSVal ApplePayErrorCode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"unknown\""

--
-- js_ApplePayErrorCodeUnknown
--  :: JSVal
js_ApplePayErrorCodeUnknown :: JSVal
js_ApplePayErrorCodeUnknown = jsNull

-- foreign import javascript unsafe "\"shippingContactInvalid\""

--
-- js_ApplePayErrorCodeShippingContactInvalid
--  :: JSVal
js_ApplePayErrorCodeShippingContactInvalid :: JSVal
js_ApplePayErrorCodeShippingContactInvalid = jsNull

-- foreign import javascript unsafe "\"billingContactInvalid\""

--
-- js_ApplePayErrorCodeBillingContactInvalid
--  :: JSVal
js_ApplePayErrorCodeBillingContactInvalid :: JSVal
js_ApplePayErrorCodeBillingContactInvalid = jsNull

-- foreign import javascript unsafe "\"addressUnservicable\""

--
-- js_ApplePayErrorCodeAddressUnservicable
--  :: JSVal
js_ApplePayErrorCodeAddressUnservicable :: JSVal
js_ApplePayErrorCodeAddressUnservicable = jsNull

data ApplePayErrorContactField = ApplePayErrorContactFieldPhoneNumber
                               | ApplePayErrorContactFieldEmailAddress
                               | ApplePayErrorContactFieldName
                               | ApplePayErrorContactFieldPostalAddress
                               | ApplePayErrorContactFieldAddressLines
                               | ApplePayErrorContactFieldLocality
                               | ApplePayErrorContactFieldPostalCode
                               | ApplePayErrorContactFieldAdministrativeArea
                               | ApplePayErrorContactFieldCountry
                               deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayErrorContactField where
        pToJSVal ApplePayErrorContactFieldPhoneNumber
          = js_ApplePayErrorContactFieldPhoneNumber
        pToJSVal ApplePayErrorContactFieldEmailAddress
          = js_ApplePayErrorContactFieldEmailAddress
        pToJSVal ApplePayErrorContactFieldName
          = js_ApplePayErrorContactFieldName
        pToJSVal ApplePayErrorContactFieldPostalAddress
          = js_ApplePayErrorContactFieldPostalAddress
        pToJSVal ApplePayErrorContactFieldAddressLines
          = js_ApplePayErrorContactFieldAddressLines
        pToJSVal ApplePayErrorContactFieldLocality
          = js_ApplePayErrorContactFieldLocality
        pToJSVal ApplePayErrorContactFieldPostalCode
          = js_ApplePayErrorContactFieldPostalCode
        pToJSVal ApplePayErrorContactFieldAdministrativeArea
          = js_ApplePayErrorContactFieldAdministrativeArea
        pToJSVal ApplePayErrorContactFieldCountry
          = js_ApplePayErrorContactFieldCountry

instance ToJSVal ApplePayErrorContactField where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayErrorContactField where
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldPhoneNumber =
            ApplePayErrorContactFieldPhoneNumber
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldEmailAddress =
            ApplePayErrorContactFieldEmailAddress
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldName =
            ApplePayErrorContactFieldName
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldPostalAddress =
            ApplePayErrorContactFieldPostalAddress
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldAddressLines =
            ApplePayErrorContactFieldAddressLines
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldLocality =
            ApplePayErrorContactFieldLocality
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldPostalCode =
            ApplePayErrorContactFieldPostalCode
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldAdministrativeArea =
            ApplePayErrorContactFieldAdministrativeArea
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldCountry =
            ApplePayErrorContactFieldCountry

instance FromJSVal ApplePayErrorContactField where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"phoneNumber\""

--
-- js_ApplePayErrorContactFieldPhoneNumber
--  :: JSVal
js_ApplePayErrorContactFieldPhoneNumber :: JSVal
js_ApplePayErrorContactFieldPhoneNumber = jsNull

-- foreign import javascript unsafe "\"emailAddress\""

--
-- js_ApplePayErrorContactFieldEmailAddress
--  :: JSVal
js_ApplePayErrorContactFieldEmailAddress :: JSVal
js_ApplePayErrorContactFieldEmailAddress = jsNull

-- foreign import javascript unsafe "\"name\""

--
-- js_ApplePayErrorContactFieldName
--  :: JSVal
js_ApplePayErrorContactFieldName :: JSVal
js_ApplePayErrorContactFieldName = jsNull

-- foreign import javascript unsafe "\"postalAddress\""

--
-- js_ApplePayErrorContactFieldPostalAddress
--  :: JSVal
js_ApplePayErrorContactFieldPostalAddress :: JSVal
js_ApplePayErrorContactFieldPostalAddress = jsNull

-- foreign import javascript unsafe "\"addressLines\""

--
-- js_ApplePayErrorContactFieldAddressLines
--  :: JSVal
js_ApplePayErrorContactFieldAddressLines :: JSVal
js_ApplePayErrorContactFieldAddressLines = jsNull

-- foreign import javascript unsafe "\"locality\""

--
-- js_ApplePayErrorContactFieldLocality
--  :: JSVal
js_ApplePayErrorContactFieldLocality :: JSVal
js_ApplePayErrorContactFieldLocality = jsNull

-- foreign import javascript unsafe "\"postalCode\""

--
-- js_ApplePayErrorContactFieldPostalCode
--  :: JSVal
js_ApplePayErrorContactFieldPostalCode :: JSVal
js_ApplePayErrorContactFieldPostalCode = jsNull

-- foreign import javascript unsafe "\"administrativeArea\""

--
-- js_ApplePayErrorContactFieldAdministrativeArea
--  :: JSVal
js_ApplePayErrorContactFieldAdministrativeArea :: JSVal
js_ApplePayErrorContactFieldAdministrativeArea = jsNull

-- foreign import javascript unsafe "\"country\""

--
-- js_ApplePayErrorContactFieldCountry
--  :: JSVal
js_ApplePayErrorContactFieldCountry :: JSVal
js_ApplePayErrorContactFieldCountry = jsNull

data ApplePayLineItemType = ApplePayLineItemTypePending
                          | ApplePayLineItemTypeFinal
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayLineItemType where
        pToJSVal ApplePayLineItemTypePending
          = js_ApplePayLineItemTypePending
        pToJSVal ApplePayLineItemTypeFinal = js_ApplePayLineItemTypeFinal

instance ToJSVal ApplePayLineItemType where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayLineItemType where
        pFromJSVal x
          | x `js_eq` js_ApplePayLineItemTypePending =
            ApplePayLineItemTypePending
        pFromJSVal x
          | x `js_eq` js_ApplePayLineItemTypeFinal =
            ApplePayLineItemTypeFinal

instance FromJSVal ApplePayLineItemType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"pending\""

--
-- js_ApplePayLineItemTypePending
--  :: JSVal
js_ApplePayLineItemTypePending :: JSVal
js_ApplePayLineItemTypePending = jsNull

-- foreign import javascript unsafe "\"final\""

--
-- js_ApplePayLineItemTypeFinal
--  :: JSVal
js_ApplePayLineItemTypeFinal :: JSVal
js_ApplePayLineItemTypeFinal = jsNull

data ApplePayPaymentMethodType = ApplePayPaymentMethodTypeDebit
                               | ApplePayPaymentMethodTypeCredit
                               | ApplePayPaymentMethodTypePrepaid
                               | ApplePayPaymentMethodTypeStore
                               deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayPaymentMethodType where
        pToJSVal ApplePayPaymentMethodTypeDebit
          = js_ApplePayPaymentMethodTypeDebit
        pToJSVal ApplePayPaymentMethodTypeCredit
          = js_ApplePayPaymentMethodTypeCredit
        pToJSVal ApplePayPaymentMethodTypePrepaid
          = js_ApplePayPaymentMethodTypePrepaid
        pToJSVal ApplePayPaymentMethodTypeStore
          = js_ApplePayPaymentMethodTypeStore

instance ToJSVal ApplePayPaymentMethodType where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayPaymentMethodType where
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypeDebit =
            ApplePayPaymentMethodTypeDebit
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypeCredit =
            ApplePayPaymentMethodTypeCredit
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypePrepaid =
            ApplePayPaymentMethodTypePrepaid
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypeStore =
            ApplePayPaymentMethodTypeStore

instance FromJSVal ApplePayPaymentMethodType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"debit\""

--
-- js_ApplePayPaymentMethodTypeDebit
--  :: JSVal
js_ApplePayPaymentMethodTypeDebit :: JSVal
js_ApplePayPaymentMethodTypeDebit = jsNull

-- foreign import javascript unsafe "\"credit\""

--
-- js_ApplePayPaymentMethodTypeCredit
--  :: JSVal
js_ApplePayPaymentMethodTypeCredit :: JSVal
js_ApplePayPaymentMethodTypeCredit = jsNull

-- foreign import javascript unsafe "\"prepaid\""

--
-- js_ApplePayPaymentMethodTypePrepaid
--  :: JSVal
js_ApplePayPaymentMethodTypePrepaid :: JSVal
js_ApplePayPaymentMethodTypePrepaid = jsNull

-- foreign import javascript unsafe "\"store\""

--
-- js_ApplePayPaymentMethodTypeStore
--  :: JSVal
js_ApplePayPaymentMethodTypeStore :: JSVal
js_ApplePayPaymentMethodTypeStore = jsNull

data ApplePayPaymentPassActivationState = ApplePayPaymentPassActivationStateActivated
                                        | ApplePayPaymentPassActivationStateRequiresActivation
                                        | ApplePayPaymentPassActivationStateActivating
                                        | ApplePayPaymentPassActivationStateSuspended
                                        | ApplePayPaymentPassActivationStateDeactivated
                                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayPaymentPassActivationState where
        pToJSVal ApplePayPaymentPassActivationStateActivated
          = js_ApplePayPaymentPassActivationStateActivated
        pToJSVal ApplePayPaymentPassActivationStateRequiresActivation
          = js_ApplePayPaymentPassActivationStateRequiresActivation
        pToJSVal ApplePayPaymentPassActivationStateActivating
          = js_ApplePayPaymentPassActivationStateActivating
        pToJSVal ApplePayPaymentPassActivationStateSuspended
          = js_ApplePayPaymentPassActivationStateSuspended
        pToJSVal ApplePayPaymentPassActivationStateDeactivated
          = js_ApplePayPaymentPassActivationStateDeactivated

instance ToJSVal ApplePayPaymentPassActivationState where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayPaymentPassActivationState where
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateActivated =
            ApplePayPaymentPassActivationStateActivated
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateRequiresActivation
            = ApplePayPaymentPassActivationStateRequiresActivation
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateActivating =
            ApplePayPaymentPassActivationStateActivating
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateSuspended =
            ApplePayPaymentPassActivationStateSuspended
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateDeactivated =
            ApplePayPaymentPassActivationStateDeactivated

instance FromJSVal ApplePayPaymentPassActivationState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"activated\""

--
-- js_ApplePayPaymentPassActivationStateActivated
--  :: JSVal
js_ApplePayPaymentPassActivationStateActivated :: JSVal
js_ApplePayPaymentPassActivationStateActivated = jsNull

-- foreign import javascript unsafe "\"requiresActivation\""

--
-- js_ApplePayPaymentPassActivationStateRequiresActivation
--  :: JSVal
js_ApplePayPaymentPassActivationStateRequiresActivation :: JSVal
js_ApplePayPaymentPassActivationStateRequiresActivation = jsNull

-- foreign import javascript unsafe "\"activating\""

--
-- js_ApplePayPaymentPassActivationStateActivating
--  :: JSVal
js_ApplePayPaymentPassActivationStateActivating :: JSVal
js_ApplePayPaymentPassActivationStateActivating = jsNull

-- foreign import javascript unsafe "\"suspended\""

--
-- js_ApplePayPaymentPassActivationStateSuspended
--  :: JSVal
js_ApplePayPaymentPassActivationStateSuspended :: JSVal
js_ApplePayPaymentPassActivationStateSuspended = jsNull

-- foreign import javascript unsafe "\"deactivated\""

--
-- js_ApplePayPaymentPassActivationStateDeactivated
--  :: JSVal
js_ApplePayPaymentPassActivationStateDeactivated :: JSVal
js_ApplePayPaymentPassActivationStateDeactivated = jsNull

data ApplePayMerchantCapability = ApplePayMerchantCapabilitySupports3DS
                                | ApplePayMerchantCapabilitySupportsEMV
                                | ApplePayMerchantCapabilitySupportsCredit
                                | ApplePayMerchantCapabilitySupportsDebit
                                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayMerchantCapability where
        pToJSVal ApplePayMerchantCapabilitySupports3DS
          = js_ApplePayMerchantCapabilitySupports3DS
        pToJSVal ApplePayMerchantCapabilitySupportsEMV
          = js_ApplePayMerchantCapabilitySupportsEMV
        pToJSVal ApplePayMerchantCapabilitySupportsCredit
          = js_ApplePayMerchantCapabilitySupportsCredit
        pToJSVal ApplePayMerchantCapabilitySupportsDebit
          = js_ApplePayMerchantCapabilitySupportsDebit

instance ToJSVal ApplePayMerchantCapability where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayMerchantCapability where
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupports3DS =
            ApplePayMerchantCapabilitySupports3DS
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupportsEMV =
            ApplePayMerchantCapabilitySupportsEMV
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupportsCredit =
            ApplePayMerchantCapabilitySupportsCredit
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupportsDebit =
            ApplePayMerchantCapabilitySupportsDebit

instance FromJSVal ApplePayMerchantCapability where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"supports3DS\""

--
-- js_ApplePayMerchantCapabilitySupports3DS
--  :: JSVal
js_ApplePayMerchantCapabilitySupports3DS :: JSVal
js_ApplePayMerchantCapabilitySupports3DS = jsNull

-- foreign import javascript unsafe "\"supportsEMV\""

--
-- js_ApplePayMerchantCapabilitySupportsEMV
--  :: JSVal
js_ApplePayMerchantCapabilitySupportsEMV :: JSVal
js_ApplePayMerchantCapabilitySupportsEMV = jsNull

-- foreign import javascript unsafe "\"supportsCredit\""

--
-- js_ApplePayMerchantCapabilitySupportsCredit
--  :: JSVal
js_ApplePayMerchantCapabilitySupportsCredit :: JSVal
js_ApplePayMerchantCapabilitySupportsCredit = jsNull

-- foreign import javascript unsafe "\"supportsDebit\""

--
-- js_ApplePayMerchantCapabilitySupportsDebit
--  :: JSVal
js_ApplePayMerchantCapabilitySupportsDebit :: JSVal
js_ApplePayMerchantCapabilitySupportsDebit = jsNull

data ApplePayContactField = ApplePayContactFieldEmail
                          | ApplePayContactFieldName
                          | ApplePayContactFieldPhone
                          | ApplePayContactFieldPostalAddress
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayContactField where
        pToJSVal ApplePayContactFieldEmail = js_ApplePayContactFieldEmail
        pToJSVal ApplePayContactFieldName = js_ApplePayContactFieldName
        pToJSVal ApplePayContactFieldPhone = js_ApplePayContactFieldPhone
        pToJSVal ApplePayContactFieldPostalAddress
          = js_ApplePayContactFieldPostalAddress

instance ToJSVal ApplePayContactField where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayContactField where
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldEmail =
            ApplePayContactFieldEmail
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldName = ApplePayContactFieldName
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldPhone =
            ApplePayContactFieldPhone
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldPostalAddress =
            ApplePayContactFieldPostalAddress

instance FromJSVal ApplePayContactField where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"email\""

--
-- js_ApplePayContactFieldEmail
--  :: JSVal
js_ApplePayContactFieldEmail :: JSVal
js_ApplePayContactFieldEmail = jsNull

-- foreign import javascript unsafe "\"name\""

--
-- js_ApplePayContactFieldName
--  :: JSVal
js_ApplePayContactFieldName :: JSVal
js_ApplePayContactFieldName = jsNull

-- foreign import javascript unsafe "\"phone\""

--
-- js_ApplePayContactFieldPhone
--  :: JSVal
js_ApplePayContactFieldPhone :: JSVal
js_ApplePayContactFieldPhone = jsNull

-- foreign import javascript unsafe "\"postalAddress\""

--
-- js_ApplePayContactFieldPostalAddress
--  :: JSVal
js_ApplePayContactFieldPostalAddress :: JSVal
js_ApplePayContactFieldPostalAddress = jsNull

data ApplePayShippingType = ApplePayShippingTypeShipping
                          | ApplePayShippingTypeDelivery
                          | ApplePayShippingTypeStorePickup
                          | ApplePayShippingTypeServicePickup
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ApplePayShippingType where
        pToJSVal ApplePayShippingTypeShipping
          = js_ApplePayShippingTypeShipping
        pToJSVal ApplePayShippingTypeDelivery
          = js_ApplePayShippingTypeDelivery
        pToJSVal ApplePayShippingTypeStorePickup
          = js_ApplePayShippingTypeStorePickup
        pToJSVal ApplePayShippingTypeServicePickup
          = js_ApplePayShippingTypeServicePickup

instance ToJSVal ApplePayShippingType where
        toJSVal = return . pToJSVal

instance PFromJSVal ApplePayShippingType where
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeShipping =
            ApplePayShippingTypeShipping
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeDelivery =
            ApplePayShippingTypeDelivery
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeStorePickup =
            ApplePayShippingTypeStorePickup
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeServicePickup =
            ApplePayShippingTypeServicePickup

instance FromJSVal ApplePayShippingType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"shipping\""

--
-- js_ApplePayShippingTypeShipping
--  :: JSVal
js_ApplePayShippingTypeShipping :: JSVal
js_ApplePayShippingTypeShipping = jsNull

-- foreign import javascript unsafe "\"delivery\""

--
-- js_ApplePayShippingTypeDelivery
--  :: JSVal
js_ApplePayShippingTypeDelivery :: JSVal
js_ApplePayShippingTypeDelivery = jsNull

-- foreign import javascript unsafe "\"storePickup\""

--
-- js_ApplePayShippingTypeStorePickup
--  :: JSVal
js_ApplePayShippingTypeStorePickup :: JSVal
js_ApplePayShippingTypeStorePickup = jsNull

-- foreign import javascript unsafe "\"servicePickup\""

--
-- js_ApplePayShippingTypeServicePickup
--  :: JSVal
js_ApplePayShippingTypeServicePickup :: JSVal
js_ApplePayShippingTypeServicePickup = jsNull

data MediaKeyMessageType = MediaKeyMessageTypeLicenseRequest
                         | MediaKeyMessageTypeLicenseRenewal
                         | MediaKeyMessageTypeLicenseRelease
                         | MediaKeyMessageTypeIndividualizationRequest
                         deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal MediaKeyMessageType where
        pToJSVal MediaKeyMessageTypeLicenseRequest
          = js_MediaKeyMessageTypeLicenseRequest
        pToJSVal MediaKeyMessageTypeLicenseRenewal
          = js_MediaKeyMessageTypeLicenseRenewal
        pToJSVal MediaKeyMessageTypeLicenseRelease
          = js_MediaKeyMessageTypeLicenseRelease
        pToJSVal MediaKeyMessageTypeIndividualizationRequest
          = js_MediaKeyMessageTypeIndividualizationRequest

instance ToJSVal MediaKeyMessageType where
        toJSVal = return . pToJSVal

instance PFromJSVal MediaKeyMessageType where
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeLicenseRequest =
            MediaKeyMessageTypeLicenseRequest
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeLicenseRenewal =
            MediaKeyMessageTypeLicenseRenewal
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeLicenseRelease =
            MediaKeyMessageTypeLicenseRelease
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeIndividualizationRequest =
            MediaKeyMessageTypeIndividualizationRequest

instance FromJSVal MediaKeyMessageType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"license-request\""

--
-- js_MediaKeyMessageTypeLicenseRequest
--  :: JSVal
js_MediaKeyMessageTypeLicenseRequest :: JSVal
js_MediaKeyMessageTypeLicenseRequest = jsNull

-- foreign import javascript unsafe "\"license-renewal\""

--
-- js_MediaKeyMessageTypeLicenseRenewal
--  :: JSVal
js_MediaKeyMessageTypeLicenseRenewal :: JSVal
js_MediaKeyMessageTypeLicenseRenewal = jsNull

-- foreign import javascript unsafe "\"license-release\""

--
-- js_MediaKeyMessageTypeLicenseRelease
--  :: JSVal
js_MediaKeyMessageTypeLicenseRelease :: JSVal
js_MediaKeyMessageTypeLicenseRelease = jsNull

-- foreign import javascript unsafe "\"individualization-request\""

--
-- js_MediaKeyMessageTypeIndividualizationRequest
--  :: JSVal
js_MediaKeyMessageTypeIndividualizationRequest :: JSVal
js_MediaKeyMessageTypeIndividualizationRequest = jsNull

data MediaKeySessionType = MediaKeySessionTypeTemporary
                         | MediaKeySessionTypePersistentUsageRecord
                         | MediaKeySessionTypePersistentLicense
                         deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal MediaKeySessionType where
        pToJSVal MediaKeySessionTypeTemporary
          = js_MediaKeySessionTypeTemporary
        pToJSVal MediaKeySessionTypePersistentUsageRecord
          = js_MediaKeySessionTypePersistentUsageRecord
        pToJSVal MediaKeySessionTypePersistentLicense
          = js_MediaKeySessionTypePersistentLicense

instance ToJSVal MediaKeySessionType where
        toJSVal = return . pToJSVal

instance PFromJSVal MediaKeySessionType where
        pFromJSVal x
          | x `js_eq` js_MediaKeySessionTypeTemporary =
            MediaKeySessionTypeTemporary
        pFromJSVal x
          | x `js_eq` js_MediaKeySessionTypePersistentUsageRecord =
            MediaKeySessionTypePersistentUsageRecord
        pFromJSVal x
          | x `js_eq` js_MediaKeySessionTypePersistentLicense =
            MediaKeySessionTypePersistentLicense

instance FromJSVal MediaKeySessionType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"temporary\""

--
-- js_MediaKeySessionTypeTemporary
--  :: JSVal
js_MediaKeySessionTypeTemporary :: JSVal
js_MediaKeySessionTypeTemporary = jsNull

-- foreign import javascript unsafe "\"persistent-usage-record\""

--
-- js_MediaKeySessionTypePersistentUsageRecord
--  :: JSVal
js_MediaKeySessionTypePersistentUsageRecord :: JSVal
js_MediaKeySessionTypePersistentUsageRecord = jsNull

-- foreign import javascript unsafe "\"persistent-license\""

--
-- js_MediaKeySessionTypePersistentLicense
--  :: JSVal
js_MediaKeySessionTypePersistentLicense :: JSVal
js_MediaKeySessionTypePersistentLicense = jsNull

data MediaKeysRequirement = MediaKeysRequirementRequired
                          | MediaKeysRequirementOptional
                          | MediaKeysRequirementNotAllowed
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal MediaKeysRequirement where
        pToJSVal MediaKeysRequirementRequired
          = js_MediaKeysRequirementRequired
        pToJSVal MediaKeysRequirementOptional
          = js_MediaKeysRequirementOptional
        pToJSVal MediaKeysRequirementNotAllowed
          = js_MediaKeysRequirementNotAllowed

instance ToJSVal MediaKeysRequirement where
        toJSVal = return . pToJSVal

instance PFromJSVal MediaKeysRequirement where
        pFromJSVal x
          | x `js_eq` js_MediaKeysRequirementRequired =
            MediaKeysRequirementRequired
        pFromJSVal x
          | x `js_eq` js_MediaKeysRequirementOptional =
            MediaKeysRequirementOptional
        pFromJSVal x
          | x `js_eq` js_MediaKeysRequirementNotAllowed =
            MediaKeysRequirementNotAllowed

instance FromJSVal MediaKeysRequirement where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"required\""

--
-- js_MediaKeysRequirementRequired
--  :: JSVal
js_MediaKeysRequirementRequired :: JSVal
js_MediaKeysRequirementRequired = jsNull

-- foreign import javascript unsafe "\"optional\""

--
-- js_MediaKeysRequirementOptional
--  :: JSVal
js_MediaKeysRequirementOptional :: JSVal
js_MediaKeysRequirementOptional = jsNull

-- foreign import javascript unsafe "\"not-allowed\""

--
-- js_MediaKeysRequirementNotAllowed
--  :: JSVal
js_MediaKeysRequirementNotAllowed :: JSVal
js_MediaKeysRequirementNotAllowed = jsNull

data MediaKeyStatus = MediaKeyStatusUsable
                    | MediaKeyStatusExpired
                    | MediaKeyStatusReleased
                    | MediaKeyStatusOutputRestricted
                    | MediaKeyStatusOutputDownscaled
                    | MediaKeyStatusStatusPending
                    | MediaKeyStatusInternalError
                    deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal MediaKeyStatus where
        pToJSVal MediaKeyStatusUsable = js_MediaKeyStatusUsable
        pToJSVal MediaKeyStatusExpired = js_MediaKeyStatusExpired
        pToJSVal MediaKeyStatusReleased = js_MediaKeyStatusReleased
        pToJSVal MediaKeyStatusOutputRestricted
          = js_MediaKeyStatusOutputRestricted
        pToJSVal MediaKeyStatusOutputDownscaled
          = js_MediaKeyStatusOutputDownscaled
        pToJSVal MediaKeyStatusStatusPending
          = js_MediaKeyStatusStatusPending
        pToJSVal MediaKeyStatusInternalError
          = js_MediaKeyStatusInternalError

instance ToJSVal MediaKeyStatus where
        toJSVal = return . pToJSVal

instance PFromJSVal MediaKeyStatus where
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusUsable = MediaKeyStatusUsable
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusExpired = MediaKeyStatusExpired
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusReleased = MediaKeyStatusReleased
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusOutputRestricted =
            MediaKeyStatusOutputRestricted
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusOutputDownscaled =
            MediaKeyStatusOutputDownscaled
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusStatusPending =
            MediaKeyStatusStatusPending
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusInternalError =
            MediaKeyStatusInternalError

instance FromJSVal MediaKeyStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"usable\""

--
-- js_MediaKeyStatusUsable
--  :: JSVal
js_MediaKeyStatusUsable :: JSVal
js_MediaKeyStatusUsable = jsNull

-- foreign import javascript unsafe "\"expired\""

--
-- js_MediaKeyStatusExpired
--  :: JSVal
js_MediaKeyStatusExpired :: JSVal
js_MediaKeyStatusExpired = jsNull

-- foreign import javascript unsafe "\"released\""

--
-- js_MediaKeyStatusReleased
--  :: JSVal
js_MediaKeyStatusReleased :: JSVal
js_MediaKeyStatusReleased = jsNull

-- foreign import javascript unsafe "\"output-restricted\""

--
-- js_MediaKeyStatusOutputRestricted
--  :: JSVal
js_MediaKeyStatusOutputRestricted :: JSVal
js_MediaKeyStatusOutputRestricted = jsNull

-- foreign import javascript unsafe "\"output-downscaled\""

--
-- js_MediaKeyStatusOutputDownscaled
--  :: JSVal
js_MediaKeyStatusOutputDownscaled :: JSVal
js_MediaKeyStatusOutputDownscaled = jsNull

-- foreign import javascript unsafe "\"status-pending\""

--
-- js_MediaKeyStatusStatusPending
--  :: JSVal
js_MediaKeyStatusStatusPending :: JSVal
js_MediaKeyStatusStatusPending = jsNull

-- foreign import javascript unsafe "\"internal-error\""

--
-- js_MediaKeyStatusInternalError
--  :: JSVal
js_MediaKeyStatusInternalError :: JSVal
js_MediaKeyStatusInternalError = jsNull

data RequestType = RequestType
                 | RequestTypeAudio
                 | RequestTypeFont
                 | RequestTypeImage
                 | RequestTypeScript
                 | RequestTypeStyle
                 | RequestTypeTrack
                 | RequestTypeVideo
                 deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RequestType where
        pToJSVal RequestType       = js_RequestType
        pToJSVal RequestTypeAudio  = js_RequestTypeAudio
        pToJSVal RequestTypeFont   = js_RequestTypeFont
        pToJSVal RequestTypeImage  = js_RequestTypeImage
        pToJSVal RequestTypeScript = js_RequestTypeScript
        pToJSVal RequestTypeStyle  = js_RequestTypeStyle
        pToJSVal RequestTypeTrack  = js_RequestTypeTrack
        pToJSVal RequestTypeVideo  = js_RequestTypeVideo

instance ToJSVal RequestType where
        toJSVal = return . pToJSVal

instance PFromJSVal RequestType where
        pFromJSVal x | x `js_eq` js_RequestType = RequestType
        pFromJSVal x | x `js_eq` js_RequestTypeAudio = RequestTypeAudio
        pFromJSVal x | x `js_eq` js_RequestTypeFont = RequestTypeFont
        pFromJSVal x | x `js_eq` js_RequestTypeImage = RequestTypeImage
        pFromJSVal x | x `js_eq` js_RequestTypeScript = RequestTypeScript
        pFromJSVal x | x `js_eq` js_RequestTypeStyle = RequestTypeStyle
        pFromJSVal x | x `js_eq` js_RequestTypeTrack = RequestTypeTrack
        pFromJSVal x | x `js_eq` js_RequestTypeVideo = RequestTypeVideo

instance FromJSVal RequestType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"\""
--
-- js_RequestType
--  :: JSVal
js_RequestType :: JSVal
js_RequestType = jsNull

-- foreign import javascript unsafe "\"audio\"" js_RequestTypeAudio ::
--         JSVal
js_RequestTypeAudio :: JSVal
js_RequestTypeAudio = jsNull

-- foreign import javascript unsafe "\"font\"" js_RequestTypeFont ::
--         JSVal
js_RequestTypeFont :: JSVal
js_RequestTypeFont = jsNull

-- foreign import javascript unsafe "\"image\"" js_RequestTypeImage ::
--         JSVal
js_RequestTypeImage :: JSVal
js_RequestTypeImage = jsNull

-- foreign import javascript unsafe "\"script\""
--
-- js_RequestTypeScript

--         :: JSVal
js_RequestTypeScript
        :: JSVal
js_RequestTypeScript
 = jsNull

-- foreign import javascript unsafe "\"style\"" js_RequestTypeStyle ::
--         JSVal
js_RequestTypeStyle :: JSVal
js_RequestTypeStyle = jsNull

-- foreign import javascript unsafe "\"track\"" js_RequestTypeTrack ::
--         JSVal
js_RequestTypeTrack :: JSVal
js_RequestTypeTrack = jsNull

-- foreign import javascript unsafe "\"video\"" js_RequestTypeVideo ::
--         JSVal
js_RequestTypeVideo :: JSVal
js_RequestTypeVideo = jsNull

data RequestDestination = RequestDestination
                        | RequestDestinationDocument
                        | RequestDestinationSharedworker
                        | RequestDestinationSubresource
                        | RequestDestinationUnknown
                        | RequestDestinationWorker
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RequestDestination where
        pToJSVal RequestDestination = js_RequestDestination
        pToJSVal RequestDestinationDocument = js_RequestDestinationDocument
        pToJSVal RequestDestinationSharedworker
          = js_RequestDestinationSharedworker
        pToJSVal RequestDestinationSubresource
          = js_RequestDestinationSubresource
        pToJSVal RequestDestinationUnknown = js_RequestDestinationUnknown
        pToJSVal RequestDestinationWorker = js_RequestDestinationWorker

instance ToJSVal RequestDestination where
        toJSVal = return . pToJSVal

instance PFromJSVal RequestDestination where
        pFromJSVal x | x `js_eq` js_RequestDestination = RequestDestination
        pFromJSVal x
          | x `js_eq` js_RequestDestinationDocument =
            RequestDestinationDocument
        pFromJSVal x
          | x `js_eq` js_RequestDestinationSharedworker =
            RequestDestinationSharedworker
        pFromJSVal x
          | x `js_eq` js_RequestDestinationSubresource =
            RequestDestinationSubresource
        pFromJSVal x
          | x `js_eq` js_RequestDestinationUnknown =
            RequestDestinationUnknown
        pFromJSVal x
          | x `js_eq` js_RequestDestinationWorker = RequestDestinationWorker

instance FromJSVal RequestDestination where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"\"" js_RequestDestination ::
--         JSVal
js_RequestDestination :: JSVal
js_RequestDestination = jsNull

-- foreign import javascript unsafe "\"document\""

--
-- js_RequestDestinationDocument
--  :: JSVal
js_RequestDestinationDocument :: JSVal
js_RequestDestinationDocument = jsNull

-- foreign import javascript unsafe "\"sharedworker\""

--
-- js_RequestDestinationSharedworker
--  :: JSVal
js_RequestDestinationSharedworker :: JSVal
js_RequestDestinationSharedworker = jsNull

-- foreign import javascript unsafe "\"subresource\""

--
-- js_RequestDestinationSubresource
--  :: JSVal
js_RequestDestinationSubresource :: JSVal
js_RequestDestinationSubresource = jsNull

-- foreign import javascript unsafe "\"unknown\""

--
-- js_RequestDestinationUnknown
--  :: JSVal
js_RequestDestinationUnknown :: JSVal
js_RequestDestinationUnknown = jsNull

-- foreign import javascript unsafe "\"worker\""

--
-- js_RequestDestinationWorker
--  :: JSVal
js_RequestDestinationWorker :: JSVal
js_RequestDestinationWorker = jsNull

data RequestMode = RequestModeNavigate
                 | RequestModeSameOrigin
                 | RequestModeNoCors
                 | RequestModeCors
                 deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RequestMode where
        pToJSVal RequestModeNavigate   = js_RequestModeNavigate
        pToJSVal RequestModeSameOrigin = js_RequestModeSameOrigin
        pToJSVal RequestModeNoCors     = js_RequestModeNoCors
        pToJSVal RequestModeCors       = js_RequestModeCors

instance ToJSVal RequestMode where
        toJSVal = return . pToJSVal

instance PFromJSVal RequestMode where
        pFromJSVal x
          | x `js_eq` js_RequestModeNavigate = RequestModeNavigate
        pFromJSVal x
          | x `js_eq` js_RequestModeSameOrigin = RequestModeSameOrigin
        pFromJSVal x | x `js_eq` js_RequestModeNoCors = RequestModeNoCors
        pFromJSVal x | x `js_eq` js_RequestModeCors = RequestModeCors

instance FromJSVal RequestMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"navigate\""

--
-- js_RequestModeNavigate
--  :: JSVal
js_RequestModeNavigate :: JSVal
js_RequestModeNavigate = jsNull

-- foreign import javascript unsafe "\"same-origin\""

--
-- js_RequestModeSameOrigin
--  :: JSVal
js_RequestModeSameOrigin :: JSVal
js_RequestModeSameOrigin = jsNull

-- foreign import javascript unsafe "\"no-cors\""
--
-- js_RequestModeNoCors

--         :: JSVal
js_RequestModeNoCors
        :: JSVal
js_RequestModeNoCors
 = jsNull

-- foreign import javascript unsafe "\"cors\"" js_RequestModeCors ::
--         JSVal
js_RequestModeCors :: JSVal
js_RequestModeCors = jsNull

data RequestCredentials = RequestCredentialsOmit
                        | RequestCredentialsSameOrigin
                        | RequestCredentialsInclude
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RequestCredentials where
        pToJSVal RequestCredentialsOmit = js_RequestCredentialsOmit
        pToJSVal RequestCredentialsSameOrigin
          = js_RequestCredentialsSameOrigin
        pToJSVal RequestCredentialsInclude = js_RequestCredentialsInclude

instance ToJSVal RequestCredentials where
        toJSVal = return . pToJSVal

instance PFromJSVal RequestCredentials where
        pFromJSVal x
          | x `js_eq` js_RequestCredentialsOmit = RequestCredentialsOmit
        pFromJSVal x
          | x `js_eq` js_RequestCredentialsSameOrigin =
            RequestCredentialsSameOrigin
        pFromJSVal x
          | x `js_eq` js_RequestCredentialsInclude =
            RequestCredentialsInclude

instance FromJSVal RequestCredentials where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"omit\""

--
-- js_RequestCredentialsOmit
--  :: JSVal
js_RequestCredentialsOmit :: JSVal
js_RequestCredentialsOmit = jsNull

-- foreign import javascript unsafe "\"same-origin\""

--
-- js_RequestCredentialsSameOrigin
--  :: JSVal
js_RequestCredentialsSameOrigin :: JSVal
js_RequestCredentialsSameOrigin = jsNull

-- foreign import javascript unsafe "\"include\""

--
-- js_RequestCredentialsInclude
--  :: JSVal
js_RequestCredentialsInclude :: JSVal
js_RequestCredentialsInclude = jsNull

data RequestCache = RequestCacheDefault
                  | RequestCacheNoStore
                  | RequestCacheReload
                  | RequestCacheNoCache
                  | RequestCacheForceCache
                  | RequestCacheOnlyIfCached
                  deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RequestCache where
        pToJSVal RequestCacheDefault      = js_RequestCacheDefault
        pToJSVal RequestCacheNoStore      = js_RequestCacheNoStore
        pToJSVal RequestCacheReload       = js_RequestCacheReload
        pToJSVal RequestCacheNoCache      = js_RequestCacheNoCache
        pToJSVal RequestCacheForceCache   = js_RequestCacheForceCache
        pToJSVal RequestCacheOnlyIfCached = js_RequestCacheOnlyIfCached

instance ToJSVal RequestCache where
        toJSVal = return . pToJSVal

instance PFromJSVal RequestCache where
        pFromJSVal x
          | x `js_eq` js_RequestCacheDefault = RequestCacheDefault
        pFromJSVal x
          | x `js_eq` js_RequestCacheNoStore = RequestCacheNoStore
        pFromJSVal x | x `js_eq` js_RequestCacheReload = RequestCacheReload
        pFromJSVal x
          | x `js_eq` js_RequestCacheNoCache = RequestCacheNoCache
        pFromJSVal x
          | x `js_eq` js_RequestCacheForceCache = RequestCacheForceCache
        pFromJSVal x
          | x `js_eq` js_RequestCacheOnlyIfCached = RequestCacheOnlyIfCached

instance FromJSVal RequestCache where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"default\""

--
-- js_RequestCacheDefault
--  :: JSVal
js_RequestCacheDefault :: JSVal
js_RequestCacheDefault = jsNull

-- foreign import javascript unsafe "\"no-store\""

--
-- js_RequestCacheNoStore
--  :: JSVal
js_RequestCacheNoStore :: JSVal
js_RequestCacheNoStore = jsNull

-- foreign import javascript unsafe "\"reload\""
--
-- js_RequestCacheReload

--         :: JSVal
js_RequestCacheReload
        :: JSVal
js_RequestCacheReload
 = jsNull

-- foreign import javascript unsafe "\"no-cache\""

--
-- js_RequestCacheNoCache
--  :: JSVal
js_RequestCacheNoCache :: JSVal
js_RequestCacheNoCache = jsNull

-- foreign import javascript unsafe "\"force-cache\""

--
-- js_RequestCacheForceCache
--  :: JSVal
js_RequestCacheForceCache :: JSVal
js_RequestCacheForceCache = jsNull

-- foreign import javascript unsafe "\"only-if-cached\""

--
-- js_RequestCacheOnlyIfCached
--  :: JSVal
js_RequestCacheOnlyIfCached :: JSVal
js_RequestCacheOnlyIfCached = jsNull

data RequestRedirect = RequestRedirectFollow
                     | RequestRedirectError
                     | RequestRedirectManual
                     deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RequestRedirect where
        pToJSVal RequestRedirectFollow = js_RequestRedirectFollow
        pToJSVal RequestRedirectError  = js_RequestRedirectError
        pToJSVal RequestRedirectManual = js_RequestRedirectManual

instance ToJSVal RequestRedirect where
        toJSVal = return . pToJSVal

instance PFromJSVal RequestRedirect where
        pFromJSVal x
          | x `js_eq` js_RequestRedirectFollow = RequestRedirectFollow
        pFromJSVal x
          | x `js_eq` js_RequestRedirectError = RequestRedirectError
        pFromJSVal x
          | x `js_eq` js_RequestRedirectManual = RequestRedirectManual

instance FromJSVal RequestRedirect where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"follow\""

--
-- js_RequestRedirectFollow
--  :: JSVal
js_RequestRedirectFollow :: JSVal
js_RequestRedirectFollow = jsNull

-- foreign import javascript unsafe "\"error\""

--
-- js_RequestRedirectError
--  :: JSVal
js_RequestRedirectError :: JSVal
js_RequestRedirectError = jsNull

-- foreign import javascript unsafe "\"manual\""

--
-- js_RequestRedirectManual
--  :: JSVal
js_RequestRedirectManual :: JSVal
js_RequestRedirectManual = jsNull

data ReferrerPolicy = ReferrerPolicy
                    | ReferrerPolicyNoReferrer
                    | ReferrerPolicyNoReferrerWhenDowngrade
                    | ReferrerPolicyOrigin
                    | ReferrerPolicyOriginWhenCrossOrigin
                    | ReferrerPolicyUnsafeUrl
                    deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ReferrerPolicy where
        pToJSVal ReferrerPolicy = js_ReferrerPolicy
        pToJSVal ReferrerPolicyNoReferrer = js_ReferrerPolicyNoReferrer
        pToJSVal ReferrerPolicyNoReferrerWhenDowngrade
          = js_ReferrerPolicyNoReferrerWhenDowngrade
        pToJSVal ReferrerPolicyOrigin = js_ReferrerPolicyOrigin
        pToJSVal ReferrerPolicyOriginWhenCrossOrigin
          = js_ReferrerPolicyOriginWhenCrossOrigin
        pToJSVal ReferrerPolicyUnsafeUrl = js_ReferrerPolicyUnsafeUrl

instance ToJSVal ReferrerPolicy where
        toJSVal = return . pToJSVal

instance PFromJSVal ReferrerPolicy where
        pFromJSVal x | x `js_eq` js_ReferrerPolicy = ReferrerPolicy
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyNoReferrer = ReferrerPolicyNoReferrer
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyNoReferrerWhenDowngrade =
            ReferrerPolicyNoReferrerWhenDowngrade
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyOrigin = ReferrerPolicyOrigin
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyOriginWhenCrossOrigin =
            ReferrerPolicyOriginWhenCrossOrigin
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyUnsafeUrl = ReferrerPolicyUnsafeUrl

instance FromJSVal ReferrerPolicy where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"\""
--
-- js_ReferrerPolicy
--  :: JSVal
js_ReferrerPolicy :: JSVal
js_ReferrerPolicy = jsNull

-- foreign import javascript unsafe "\"no-referrer\""

--
-- js_ReferrerPolicyNoReferrer
--  :: JSVal
js_ReferrerPolicyNoReferrer :: JSVal
js_ReferrerPolicyNoReferrer = jsNull

-- foreign import javascript unsafe "\"no-referrer-when-downgrade\""

--
-- js_ReferrerPolicyNoReferrerWhenDowngrade
--  :: JSVal
js_ReferrerPolicyNoReferrerWhenDowngrade :: JSVal
js_ReferrerPolicyNoReferrerWhenDowngrade = jsNull

-- foreign import javascript unsafe "\"origin\""

--
-- js_ReferrerPolicyOrigin
--  :: JSVal
js_ReferrerPolicyOrigin :: JSVal
js_ReferrerPolicyOrigin = jsNull

-- foreign import javascript unsafe "\"origin-when-cross-origin\""

--
-- js_ReferrerPolicyOriginWhenCrossOrigin
--  :: JSVal
js_ReferrerPolicyOriginWhenCrossOrigin :: JSVal
js_ReferrerPolicyOriginWhenCrossOrigin = jsNull

-- foreign import javascript unsafe "\"unsafe-url\""

--
-- js_ReferrerPolicyUnsafeUrl
--  :: JSVal
js_ReferrerPolicyUnsafeUrl :: JSVal
js_ReferrerPolicyUnsafeUrl = jsNull

data ResponseType = ResponseTypeBasic
                  | ResponseTypeCors
                  | ResponseTypeDefault
                  | ResponseTypeError
                  | ResponseTypeOpaque
                  | ResponseTypeOpaqueredirect
                  deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ResponseType where
        pToJSVal ResponseTypeBasic          = js_ResponseTypeBasic
        pToJSVal ResponseTypeCors           = js_ResponseTypeCors
        pToJSVal ResponseTypeDefault        = js_ResponseTypeDefault
        pToJSVal ResponseTypeError          = js_ResponseTypeError
        pToJSVal ResponseTypeOpaque         = js_ResponseTypeOpaque
        pToJSVal ResponseTypeOpaqueredirect = js_ResponseTypeOpaqueredirect

instance ToJSVal ResponseType where
        toJSVal = return . pToJSVal

instance PFromJSVal ResponseType where
        pFromJSVal x | x `js_eq` js_ResponseTypeBasic = ResponseTypeBasic
        pFromJSVal x | x `js_eq` js_ResponseTypeCors = ResponseTypeCors
        pFromJSVal x
          | x `js_eq` js_ResponseTypeDefault = ResponseTypeDefault
        pFromJSVal x | x `js_eq` js_ResponseTypeError = ResponseTypeError
        pFromJSVal x | x `js_eq` js_ResponseTypeOpaque = ResponseTypeOpaque
        pFromJSVal x
          | x `js_eq` js_ResponseTypeOpaqueredirect =
            ResponseTypeOpaqueredirect

instance FromJSVal ResponseType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"basic\""
--
-- js_ResponseTypeBasic

--         :: JSVal
js_ResponseTypeBasic
        :: JSVal
js_ResponseTypeBasic
 = jsNull

-- foreign import javascript unsafe "\"cors\"" js_ResponseTypeCors ::
--         JSVal
js_ResponseTypeCors :: JSVal
js_ResponseTypeCors = jsNull

-- foreign import javascript unsafe "\"default\""

--
-- js_ResponseTypeDefault
--  :: JSVal
js_ResponseTypeDefault :: JSVal
js_ResponseTypeDefault = jsNull

-- foreign import javascript unsafe "\"error\""
--
-- js_ResponseTypeError

--         :: JSVal
js_ResponseTypeError
        :: JSVal
js_ResponseTypeError
 = jsNull

-- foreign import javascript unsafe "\"opaque\""
--
-- js_ResponseTypeOpaque

--         :: JSVal
js_ResponseTypeOpaque
        :: JSVal
js_ResponseTypeOpaque
 = jsNull

-- foreign import javascript unsafe "\"opaqueredirect\""

--
-- js_ResponseTypeOpaqueredirect
--  :: JSVal
js_ResponseTypeOpaqueredirect :: JSVal
js_ResponseTypeOpaqueredirect = jsNull

data IDBCursorDirection = IDBCursorDirectionNext
                        | IDBCursorDirectionNextunique
                        | IDBCursorDirectionPrev
                        | IDBCursorDirectionPrevunique
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal IDBCursorDirection where
        pToJSVal IDBCursorDirectionNext = js_IDBCursorDirectionNext
        pToJSVal IDBCursorDirectionNextunique
          = js_IDBCursorDirectionNextunique
        pToJSVal IDBCursorDirectionPrev = js_IDBCursorDirectionPrev
        pToJSVal IDBCursorDirectionPrevunique
          = js_IDBCursorDirectionPrevunique

instance ToJSVal IDBCursorDirection where
        toJSVal = return . pToJSVal

instance PFromJSVal IDBCursorDirection where
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionNext = IDBCursorDirectionNext
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionNextunique =
            IDBCursorDirectionNextunique
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionPrev = IDBCursorDirectionPrev
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionPrevunique =
            IDBCursorDirectionPrevunique

instance FromJSVal IDBCursorDirection where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"next\""

--
-- js_IDBCursorDirectionNext
--  :: JSVal
js_IDBCursorDirectionNext :: JSVal
js_IDBCursorDirectionNext = jsNull

-- foreign import javascript unsafe "\"nextunique\""

--
-- js_IDBCursorDirectionNextunique
--  :: JSVal
js_IDBCursorDirectionNextunique :: JSVal
js_IDBCursorDirectionNextunique = jsNull

-- foreign import javascript unsafe "\"prev\""

--
-- js_IDBCursorDirectionPrev
--  :: JSVal
js_IDBCursorDirectionPrev :: JSVal
js_IDBCursorDirectionPrev = jsNull

-- foreign import javascript unsafe "\"prevunique\""

--
-- js_IDBCursorDirectionPrevunique
--  :: JSVal
js_IDBCursorDirectionPrevunique :: JSVal
js_IDBCursorDirectionPrevunique = jsNull

data IDBRequestReadyState = IDBRequestReadyStatePending
                          | IDBRequestReadyStateDone
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal IDBRequestReadyState where
        pToJSVal IDBRequestReadyStatePending
          = js_IDBRequestReadyStatePending
        pToJSVal IDBRequestReadyStateDone = js_IDBRequestReadyStateDone

instance ToJSVal IDBRequestReadyState where
        toJSVal = return . pToJSVal

instance PFromJSVal IDBRequestReadyState where
        pFromJSVal x
          | x `js_eq` js_IDBRequestReadyStatePending =
            IDBRequestReadyStatePending
        pFromJSVal x
          | x `js_eq` js_IDBRequestReadyStateDone = IDBRequestReadyStateDone

instance FromJSVal IDBRequestReadyState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"pending\""

--
-- js_IDBRequestReadyStatePending
--  :: JSVal
js_IDBRequestReadyStatePending :: JSVal
js_IDBRequestReadyStatePending = jsNull

-- foreign import javascript unsafe "\"done\""

--
-- js_IDBRequestReadyStateDone
--  :: JSVal
js_IDBRequestReadyStateDone :: JSVal
js_IDBRequestReadyStateDone = jsNull

data IDBTransactionMode = IDBTransactionModeReadonly
                        | IDBTransactionModeReadwrite
                        | IDBTransactionModeVersionchange
                        deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal IDBTransactionMode where
        pToJSVal IDBTransactionModeReadonly = js_IDBTransactionModeReadonly
        pToJSVal IDBTransactionModeReadwrite
          = js_IDBTransactionModeReadwrite
        pToJSVal IDBTransactionModeVersionchange
          = js_IDBTransactionModeVersionchange

instance ToJSVal IDBTransactionMode where
        toJSVal = return . pToJSVal

instance PFromJSVal IDBTransactionMode where
        pFromJSVal x
          | x `js_eq` js_IDBTransactionModeReadonly =
            IDBTransactionModeReadonly
        pFromJSVal x
          | x `js_eq` js_IDBTransactionModeReadwrite =
            IDBTransactionModeReadwrite
        pFromJSVal x
          | x `js_eq` js_IDBTransactionModeVersionchange =
            IDBTransactionModeVersionchange

instance FromJSVal IDBTransactionMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"readonly\""

--
-- js_IDBTransactionModeReadonly
--  :: JSVal
js_IDBTransactionModeReadonly :: JSVal
js_IDBTransactionModeReadonly = jsNull

-- foreign import javascript unsafe "\"readwrite\""

--
-- js_IDBTransactionModeReadwrite
--  :: JSVal
js_IDBTransactionModeReadwrite :: JSVal
js_IDBTransactionModeReadwrite = jsNull

-- foreign import javascript unsafe "\"versionchange\""

--
-- js_IDBTransactionModeVersionchange
--  :: JSVal
js_IDBTransactionModeVersionchange :: JSVal
js_IDBTransactionModeVersionchange = jsNull

data DeviceType = DeviceTypeNone
                | DeviceTypeAirplay
                | DeviceTypeTvout
                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal DeviceType where
        pToJSVal DeviceTypeNone    = js_DeviceTypeNone
        pToJSVal DeviceTypeAirplay = js_DeviceTypeAirplay
        pToJSVal DeviceTypeTvout   = js_DeviceTypeTvout

instance ToJSVal DeviceType where
        toJSVal = return . pToJSVal

instance PFromJSVal DeviceType where
        pFromJSVal x | x `js_eq` js_DeviceTypeNone = DeviceTypeNone
        pFromJSVal x | x `js_eq` js_DeviceTypeAirplay = DeviceTypeAirplay
        pFromJSVal x | x `js_eq` js_DeviceTypeTvout = DeviceTypeTvout

instance FromJSVal DeviceType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"none\"" js_DeviceTypeNone ::
--         JSVal
js_DeviceTypeNone :: JSVal
js_DeviceTypeNone = jsNull

-- foreign import javascript unsafe "\"airplay\""
--
-- js_DeviceTypeAirplay

--         :: JSVal
js_DeviceTypeAirplay
        :: JSVal
js_DeviceTypeAirplay
 = jsNull

-- foreign import javascript unsafe "\"tvout\"" js_DeviceTypeTvout ::
--         JSVal
js_DeviceTypeTvout :: JSVal
js_DeviceTypeTvout = jsNull

data MediaSessionKind = MediaSessionKindContent
                      | MediaSessionKindTransient
                      | MediaSessionKindTransientSolo
                      | MediaSessionKindAmbient
                      deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal MediaSessionKind where
        pToJSVal MediaSessionKindContent = js_MediaSessionKindContent
        pToJSVal MediaSessionKindTransient = js_MediaSessionKindTransient
        pToJSVal MediaSessionKindTransientSolo
          = js_MediaSessionKindTransientSolo
        pToJSVal MediaSessionKindAmbient = js_MediaSessionKindAmbient

instance ToJSVal MediaSessionKind where
        toJSVal = return . pToJSVal

instance PFromJSVal MediaSessionKind where
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindContent = MediaSessionKindContent
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindTransient =
            MediaSessionKindTransient
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindTransientSolo =
            MediaSessionKindTransientSolo
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindAmbient = MediaSessionKindAmbient

instance FromJSVal MediaSessionKind where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"content\""

--
-- js_MediaSessionKindContent
--  :: JSVal
js_MediaSessionKindContent :: JSVal
js_MediaSessionKindContent = jsNull

-- foreign import javascript unsafe "\"transient\""

--
-- js_MediaSessionKindTransient
--  :: JSVal
js_MediaSessionKindTransient :: JSVal
js_MediaSessionKindTransient = jsNull

-- foreign import javascript unsafe "\"transient-solo\""

--
-- js_MediaSessionKindTransientSolo
--  :: JSVal
js_MediaSessionKindTransientSolo :: JSVal
js_MediaSessionKindTransientSolo = jsNull

-- foreign import javascript unsafe "\"ambient\""

--
-- js_MediaSessionKindAmbient
--  :: JSVal
js_MediaSessionKindAmbient :: JSVal
js_MediaSessionKindAmbient = jsNull

data EndOfStreamError = EndOfStreamErrorNetwork
                      | EndOfStreamErrorDecode
                      deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal EndOfStreamError where
        pToJSVal EndOfStreamErrorNetwork = js_EndOfStreamErrorNetwork
        pToJSVal EndOfStreamErrorDecode  = js_EndOfStreamErrorDecode

instance ToJSVal EndOfStreamError where
        toJSVal = return . pToJSVal

instance PFromJSVal EndOfStreamError where
        pFromJSVal x
          | x `js_eq` js_EndOfStreamErrorNetwork = EndOfStreamErrorNetwork
        pFromJSVal x
          | x `js_eq` js_EndOfStreamErrorDecode = EndOfStreamErrorDecode

instance FromJSVal EndOfStreamError where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"network\""

--
-- js_EndOfStreamErrorNetwork
--  :: JSVal
js_EndOfStreamErrorNetwork :: JSVal
js_EndOfStreamErrorNetwork = jsNull

-- foreign import javascript unsafe "\"decode\""

--
-- js_EndOfStreamErrorDecode
--  :: JSVal
js_EndOfStreamErrorDecode :: JSVal
js_EndOfStreamErrorDecode = jsNull

data ReadyState = ReadyStateClosed
                | ReadyStateOpen
                | ReadyStateEnded
                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ReadyState where
        pToJSVal ReadyStateClosed = js_ReadyStateClosed
        pToJSVal ReadyStateOpen   = js_ReadyStateOpen
        pToJSVal ReadyStateEnded  = js_ReadyStateEnded

instance ToJSVal ReadyState where
        toJSVal = return . pToJSVal

instance PFromJSVal ReadyState where
        pFromJSVal x | x `js_eq` js_ReadyStateClosed = ReadyStateClosed
        pFromJSVal x | x `js_eq` js_ReadyStateOpen = ReadyStateOpen
        pFromJSVal x | x `js_eq` js_ReadyStateEnded = ReadyStateEnded

instance FromJSVal ReadyState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"closed\""
--
-- js_ReadyStateClosed

--         :: JSVal
js_ReadyStateClosed
        :: JSVal
js_ReadyStateClosed
 = jsNull

-- foreign import javascript unsafe "\"open\"" js_ReadyStateOpen ::
--         JSVal
js_ReadyStateOpen :: JSVal
js_ReadyStateOpen = jsNull

-- foreign import javascript unsafe "\"ended\"" js_ReadyStateEnded ::
--         JSVal
js_ReadyStateEnded :: JSVal
js_ReadyStateEnded = jsNull

data AppendMode = AppendModeSegments
                | AppendModeSequence
                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal AppendMode where
        pToJSVal AppendModeSegments = js_AppendModeSegments
        pToJSVal AppendModeSequence = js_AppendModeSequence

instance ToJSVal AppendMode where
        toJSVal = return . pToJSVal

instance PFromJSVal AppendMode where
        pFromJSVal x | x `js_eq` js_AppendModeSegments = AppendModeSegments
        pFromJSVal x | x `js_eq` js_AppendModeSequence = AppendModeSequence

instance FromJSVal AppendMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"segments\""

--
-- js_AppendModeSegments
--  :: JSVal
js_AppendModeSegments :: JSVal
js_AppendModeSegments = jsNull

-- foreign import javascript unsafe "\"sequence\""

--
-- js_AppendModeSequence
--  :: JSVal
js_AppendModeSequence :: JSVal
js_AppendModeSequence = jsNull

data MediaDeviceKind = MediaDeviceKindAudioinput
                     | MediaDeviceKindAudiooutput
                     | MediaDeviceKindVideoinput
                     deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal MediaDeviceKind where
        pToJSVal MediaDeviceKindAudioinput  = js_MediaDeviceKindAudioinput
        pToJSVal MediaDeviceKindAudiooutput = js_MediaDeviceKindAudiooutput
        pToJSVal MediaDeviceKindVideoinput  = js_MediaDeviceKindVideoinput

instance ToJSVal MediaDeviceKind where
        toJSVal = return . pToJSVal

instance PFromJSVal MediaDeviceKind where
        pFromJSVal x
          | x `js_eq` js_MediaDeviceKindAudioinput =
            MediaDeviceKindAudioinput
        pFromJSVal x
          | x `js_eq` js_MediaDeviceKindAudiooutput =
            MediaDeviceKindAudiooutput
        pFromJSVal x
          | x `js_eq` js_MediaDeviceKindVideoinput =
            MediaDeviceKindVideoinput

instance FromJSVal MediaDeviceKind where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"audioinput\""

--
-- js_MediaDeviceKindAudioinput
--  :: JSVal
js_MediaDeviceKindAudioinput :: JSVal
js_MediaDeviceKindAudioinput = jsNull

-- foreign import javascript unsafe "\"audiooutput\""

--
-- js_MediaDeviceKindAudiooutput
--  :: JSVal
js_MediaDeviceKindAudiooutput :: JSVal
js_MediaDeviceKindAudiooutput = jsNull

-- foreign import javascript unsafe "\"videoinput\""

--
-- js_MediaDeviceKindVideoinput
--  :: JSVal
js_MediaDeviceKindVideoinput :: JSVal
js_MediaDeviceKindVideoinput = jsNull

data MediaStreamTrackState = MediaStreamTrackStateLive
                           | MediaStreamTrackStateEnded
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal MediaStreamTrackState where
        pToJSVal MediaStreamTrackStateLive  = js_MediaStreamTrackStateLive
        pToJSVal MediaStreamTrackStateEnded = js_MediaStreamTrackStateEnded

instance ToJSVal MediaStreamTrackState where
        toJSVal = return . pToJSVal

instance PFromJSVal MediaStreamTrackState where
        pFromJSVal x
          | x `js_eq` js_MediaStreamTrackStateLive =
            MediaStreamTrackStateLive
        pFromJSVal x
          | x `js_eq` js_MediaStreamTrackStateEnded =
            MediaStreamTrackStateEnded

instance FromJSVal MediaStreamTrackState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"live\""

--
-- js_MediaStreamTrackStateLive
--  :: JSVal
js_MediaStreamTrackStateLive :: JSVal
js_MediaStreamTrackStateLive = jsNull

-- foreign import javascript unsafe "\"ended\""

--
-- js_MediaStreamTrackStateEnded
--  :: JSVal
js_MediaStreamTrackStateEnded :: JSVal
js_MediaStreamTrackStateEnded = jsNull

data RTCIceTransportPolicy = RTCIceTransportPolicyRelay
                           | RTCIceTransportPolicyAll
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCIceTransportPolicy where
        pToJSVal RTCIceTransportPolicyRelay = js_RTCIceTransportPolicyRelay
        pToJSVal RTCIceTransportPolicyAll   = js_RTCIceTransportPolicyAll

instance ToJSVal RTCIceTransportPolicy where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCIceTransportPolicy where
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportPolicyRelay =
            RTCIceTransportPolicyRelay
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportPolicyAll = RTCIceTransportPolicyAll

instance FromJSVal RTCIceTransportPolicy where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"relay\""

--
-- js_RTCIceTransportPolicyRelay
--  :: JSVal
js_RTCIceTransportPolicyRelay :: JSVal
js_RTCIceTransportPolicyRelay = jsNull

-- foreign import javascript unsafe "\"all\""

--
-- js_RTCIceTransportPolicyAll
--  :: JSVal
js_RTCIceTransportPolicyAll :: JSVal
js_RTCIceTransportPolicyAll = jsNull

data RTCBundlePolicy = RTCBundlePolicyBalanced
                     | RTCBundlePolicyMaxCompat
                     | RTCBundlePolicyMaxBundle
                     deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCBundlePolicy where
        pToJSVal RTCBundlePolicyBalanced  = js_RTCBundlePolicyBalanced
        pToJSVal RTCBundlePolicyMaxCompat = js_RTCBundlePolicyMaxCompat
        pToJSVal RTCBundlePolicyMaxBundle = js_RTCBundlePolicyMaxBundle

instance ToJSVal RTCBundlePolicy where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCBundlePolicy where
        pFromJSVal x
          | x `js_eq` js_RTCBundlePolicyBalanced = RTCBundlePolicyBalanced
        pFromJSVal x
          | x `js_eq` js_RTCBundlePolicyMaxCompat = RTCBundlePolicyMaxCompat
        pFromJSVal x
          | x `js_eq` js_RTCBundlePolicyMaxBundle = RTCBundlePolicyMaxBundle

instance FromJSVal RTCBundlePolicy where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"balanced\""

--
-- js_RTCBundlePolicyBalanced
--  :: JSVal
js_RTCBundlePolicyBalanced :: JSVal
js_RTCBundlePolicyBalanced = jsNull

-- foreign import javascript unsafe "\"max-compat\""

--
-- js_RTCBundlePolicyMaxCompat
--  :: JSVal
js_RTCBundlePolicyMaxCompat :: JSVal
js_RTCBundlePolicyMaxCompat = jsNull

-- foreign import javascript unsafe "\"max-bundle\""

--
-- js_RTCBundlePolicyMaxBundle
--  :: JSVal
js_RTCBundlePolicyMaxBundle :: JSVal
js_RTCBundlePolicyMaxBundle = jsNull

data RTCDataChannelState = RTCDataChannelStateConnecting
                         | RTCDataChannelStateOpen
                         | RTCDataChannelStateClosing
                         | RTCDataChannelStateClosed
                         deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCDataChannelState where
        pToJSVal RTCDataChannelStateConnecting
          = js_RTCDataChannelStateConnecting
        pToJSVal RTCDataChannelStateOpen = js_RTCDataChannelStateOpen
        pToJSVal RTCDataChannelStateClosing = js_RTCDataChannelStateClosing
        pToJSVal RTCDataChannelStateClosed = js_RTCDataChannelStateClosed

instance ToJSVal RTCDataChannelState where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCDataChannelState where
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateConnecting =
            RTCDataChannelStateConnecting
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateOpen = RTCDataChannelStateOpen
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateClosing =
            RTCDataChannelStateClosing
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateClosed =
            RTCDataChannelStateClosed

instance FromJSVal RTCDataChannelState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"connecting\""

--
-- js_RTCDataChannelStateConnecting
--  :: JSVal
js_RTCDataChannelStateConnecting :: JSVal
js_RTCDataChannelStateConnecting = jsNull

-- foreign import javascript unsafe "\"open\""

--
-- js_RTCDataChannelStateOpen
--  :: JSVal
js_RTCDataChannelStateOpen :: JSVal
js_RTCDataChannelStateOpen = jsNull

-- foreign import javascript unsafe "\"closing\""

--
-- js_RTCDataChannelStateClosing
--  :: JSVal
js_RTCDataChannelStateClosing :: JSVal
js_RTCDataChannelStateClosing = jsNull

-- foreign import javascript unsafe "\"closed\""

--
-- js_RTCDataChannelStateClosed
--  :: JSVal
js_RTCDataChannelStateClosed :: JSVal
js_RTCDataChannelStateClosed = jsNull

data RTCIceConnectionState = RTCIceConnectionStateNew
                           | RTCIceConnectionStateChecking
                           | RTCIceConnectionStateConnected
                           | RTCIceConnectionStateCompleted
                           | RTCIceConnectionStateFailed
                           | RTCIceConnectionStateDisconnected
                           | RTCIceConnectionStateClosed
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCIceConnectionState where
        pToJSVal RTCIceConnectionStateNew = js_RTCIceConnectionStateNew
        pToJSVal RTCIceConnectionStateChecking
          = js_RTCIceConnectionStateChecking
        pToJSVal RTCIceConnectionStateConnected
          = js_RTCIceConnectionStateConnected
        pToJSVal RTCIceConnectionStateCompleted
          = js_RTCIceConnectionStateCompleted
        pToJSVal RTCIceConnectionStateFailed
          = js_RTCIceConnectionStateFailed
        pToJSVal RTCIceConnectionStateDisconnected
          = js_RTCIceConnectionStateDisconnected
        pToJSVal RTCIceConnectionStateClosed
          = js_RTCIceConnectionStateClosed

instance ToJSVal RTCIceConnectionState where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCIceConnectionState where
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateNew = RTCIceConnectionStateNew
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateChecking =
            RTCIceConnectionStateChecking
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateConnected =
            RTCIceConnectionStateConnected
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateCompleted =
            RTCIceConnectionStateCompleted
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateFailed =
            RTCIceConnectionStateFailed
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateDisconnected =
            RTCIceConnectionStateDisconnected
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateClosed =
            RTCIceConnectionStateClosed

instance FromJSVal RTCIceConnectionState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"new\""

--
-- js_RTCIceConnectionStateNew
--  :: JSVal
js_RTCIceConnectionStateNew :: JSVal
js_RTCIceConnectionStateNew = jsNull

-- foreign import javascript unsafe "\"checking\""

--
-- js_RTCIceConnectionStateChecking
--  :: JSVal
js_RTCIceConnectionStateChecking :: JSVal
js_RTCIceConnectionStateChecking = jsNull

-- foreign import javascript unsafe "\"connected\""

--
-- js_RTCIceConnectionStateConnected
--  :: JSVal
js_RTCIceConnectionStateConnected :: JSVal
js_RTCIceConnectionStateConnected = jsNull

-- foreign import javascript unsafe "\"completed\""

--
-- js_RTCIceConnectionStateCompleted
--  :: JSVal
js_RTCIceConnectionStateCompleted :: JSVal
js_RTCIceConnectionStateCompleted = jsNull

-- foreign import javascript unsafe "\"failed\""

--
-- js_RTCIceConnectionStateFailed
--  :: JSVal
js_RTCIceConnectionStateFailed :: JSVal
js_RTCIceConnectionStateFailed = jsNull

-- foreign import javascript unsafe "\"disconnected\""

--
-- js_RTCIceConnectionStateDisconnected
--  :: JSVal
js_RTCIceConnectionStateDisconnected :: JSVal
js_RTCIceConnectionStateDisconnected = jsNull

-- foreign import javascript unsafe "\"closed\""

--
-- js_RTCIceConnectionStateClosed
--  :: JSVal
js_RTCIceConnectionStateClosed :: JSVal
js_RTCIceConnectionStateClosed = jsNull

data RTCIceGatheringState = RTCIceGatheringStateNew
                          | RTCIceGatheringStateGathering
                          | RTCIceGatheringStateComplete
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCIceGatheringState where
        pToJSVal RTCIceGatheringStateNew = js_RTCIceGatheringStateNew
        pToJSVal RTCIceGatheringStateGathering
          = js_RTCIceGatheringStateGathering
        pToJSVal RTCIceGatheringStateComplete
          = js_RTCIceGatheringStateComplete

instance ToJSVal RTCIceGatheringState where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCIceGatheringState where
        pFromJSVal x
          | x `js_eq` js_RTCIceGatheringStateNew = RTCIceGatheringStateNew
        pFromJSVal x
          | x `js_eq` js_RTCIceGatheringStateGathering =
            RTCIceGatheringStateGathering
        pFromJSVal x
          | x `js_eq` js_RTCIceGatheringStateComplete =
            RTCIceGatheringStateComplete

instance FromJSVal RTCIceGatheringState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"new\""

--
-- js_RTCIceGatheringStateNew
--  :: JSVal
js_RTCIceGatheringStateNew :: JSVal
js_RTCIceGatheringStateNew = jsNull

-- foreign import javascript unsafe "\"gathering\""

--
-- js_RTCIceGatheringStateGathering
--  :: JSVal
js_RTCIceGatheringStateGathering :: JSVal
js_RTCIceGatheringStateGathering = jsNull

-- foreign import javascript unsafe "\"complete\""

--
-- js_RTCIceGatheringStateComplete
--  :: JSVal
js_RTCIceGatheringStateComplete :: JSVal
js_RTCIceGatheringStateComplete = jsNull

data RTCIceTransportState = RTCIceTransportStateNew
                          | RTCIceTransportStateChecking
                          | RTCIceTransportStateConnected
                          | RTCIceTransportStateCompleted
                          | RTCIceTransportStateFailed
                          | RTCIceTransportStateDisconnected
                          | RTCIceTransportStateClosed
                          deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCIceTransportState where
        pToJSVal RTCIceTransportStateNew = js_RTCIceTransportStateNew
        pToJSVal RTCIceTransportStateChecking
          = js_RTCIceTransportStateChecking
        pToJSVal RTCIceTransportStateConnected
          = js_RTCIceTransportStateConnected
        pToJSVal RTCIceTransportStateCompleted
          = js_RTCIceTransportStateCompleted
        pToJSVal RTCIceTransportStateFailed = js_RTCIceTransportStateFailed
        pToJSVal RTCIceTransportStateDisconnected
          = js_RTCIceTransportStateDisconnected
        pToJSVal RTCIceTransportStateClosed = js_RTCIceTransportStateClosed

instance ToJSVal RTCIceTransportState where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCIceTransportState where
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateNew = RTCIceTransportStateNew
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateChecking =
            RTCIceTransportStateChecking
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateConnected =
            RTCIceTransportStateConnected
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateCompleted =
            RTCIceTransportStateCompleted
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateFailed =
            RTCIceTransportStateFailed
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateDisconnected =
            RTCIceTransportStateDisconnected
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateClosed =
            RTCIceTransportStateClosed

instance FromJSVal RTCIceTransportState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"new\""

--
-- js_RTCIceTransportStateNew
--  :: JSVal
js_RTCIceTransportStateNew :: JSVal
js_RTCIceTransportStateNew = jsNull

-- foreign import javascript unsafe "\"checking\""

--
-- js_RTCIceTransportStateChecking
--  :: JSVal
js_RTCIceTransportStateChecking :: JSVal
js_RTCIceTransportStateChecking = jsNull

-- foreign import javascript unsafe "\"connected\""

--
-- js_RTCIceTransportStateConnected
--  :: JSVal
js_RTCIceTransportStateConnected :: JSVal
js_RTCIceTransportStateConnected = jsNull

-- foreign import javascript unsafe "\"completed\""

--
-- js_RTCIceTransportStateCompleted
--  :: JSVal
js_RTCIceTransportStateCompleted :: JSVal
js_RTCIceTransportStateCompleted = jsNull

-- foreign import javascript unsafe "\"failed\""

--
-- js_RTCIceTransportStateFailed
--  :: JSVal
js_RTCIceTransportStateFailed :: JSVal
js_RTCIceTransportStateFailed = jsNull

-- foreign import javascript unsafe "\"disconnected\""

--
-- js_RTCIceTransportStateDisconnected
--  :: JSVal
js_RTCIceTransportStateDisconnected :: JSVal
js_RTCIceTransportStateDisconnected = jsNull

-- foreign import javascript unsafe "\"closed\""

--
-- js_RTCIceTransportStateClosed
--  :: JSVal
js_RTCIceTransportStateClosed :: JSVal
js_RTCIceTransportStateClosed = jsNull

data RTCPeerConnectionState = RTCPeerConnectionStateNew
                            | RTCPeerConnectionStateConnecting
                            | RTCPeerConnectionStateConnected
                            | RTCPeerConnectionStateDisconnected
                            | RTCPeerConnectionStateFailed
                            | RTCPeerConnectionStateClosed
                            deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCPeerConnectionState where
        pToJSVal RTCPeerConnectionStateNew = js_RTCPeerConnectionStateNew
        pToJSVal RTCPeerConnectionStateConnecting
          = js_RTCPeerConnectionStateConnecting
        pToJSVal RTCPeerConnectionStateConnected
          = js_RTCPeerConnectionStateConnected
        pToJSVal RTCPeerConnectionStateDisconnected
          = js_RTCPeerConnectionStateDisconnected
        pToJSVal RTCPeerConnectionStateFailed
          = js_RTCPeerConnectionStateFailed
        pToJSVal RTCPeerConnectionStateClosed
          = js_RTCPeerConnectionStateClosed

instance ToJSVal RTCPeerConnectionState where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCPeerConnectionState where
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateNew =
            RTCPeerConnectionStateNew
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateConnecting =
            RTCPeerConnectionStateConnecting
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateConnected =
            RTCPeerConnectionStateConnected
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateDisconnected =
            RTCPeerConnectionStateDisconnected
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateFailed =
            RTCPeerConnectionStateFailed
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateClosed =
            RTCPeerConnectionStateClosed

instance FromJSVal RTCPeerConnectionState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"new\""

--
-- js_RTCPeerConnectionStateNew
--  :: JSVal
js_RTCPeerConnectionStateNew :: JSVal
js_RTCPeerConnectionStateNew = jsNull

-- foreign import javascript unsafe "\"connecting\""

--
-- js_RTCPeerConnectionStateConnecting
--  :: JSVal
js_RTCPeerConnectionStateConnecting :: JSVal
js_RTCPeerConnectionStateConnecting = jsNull

-- foreign import javascript unsafe "\"connected\""

--
-- js_RTCPeerConnectionStateConnected
--  :: JSVal
js_RTCPeerConnectionStateConnected :: JSVal
js_RTCPeerConnectionStateConnected = jsNull

-- foreign import javascript unsafe "\"disconnected\""

--
-- js_RTCPeerConnectionStateDisconnected
--  :: JSVal
js_RTCPeerConnectionStateDisconnected :: JSVal
js_RTCPeerConnectionStateDisconnected = jsNull

-- foreign import javascript unsafe "\"failed\""

--
-- js_RTCPeerConnectionStateFailed
--  :: JSVal
js_RTCPeerConnectionStateFailed :: JSVal
js_RTCPeerConnectionStateFailed = jsNull

-- foreign import javascript unsafe "\"closed\""

--
-- js_RTCPeerConnectionStateClosed
--  :: JSVal
js_RTCPeerConnectionStateClosed :: JSVal
js_RTCPeerConnectionStateClosed = jsNull

data RTCDegradationPreference = RTCDegradationPreferenceMaintainFramerate
                              | RTCDegradationPreferenceMaintainResolution
                              | RTCDegradationPreferenceBalanced
                              deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCDegradationPreference where
        pToJSVal RTCDegradationPreferenceMaintainFramerate
          = js_RTCDegradationPreferenceMaintainFramerate
        pToJSVal RTCDegradationPreferenceMaintainResolution
          = js_RTCDegradationPreferenceMaintainResolution
        pToJSVal RTCDegradationPreferenceBalanced
          = js_RTCDegradationPreferenceBalanced

instance ToJSVal RTCDegradationPreference where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCDegradationPreference where
        pFromJSVal x
          | x `js_eq` js_RTCDegradationPreferenceMaintainFramerate =
            RTCDegradationPreferenceMaintainFramerate
        pFromJSVal x
          | x `js_eq` js_RTCDegradationPreferenceMaintainResolution =
            RTCDegradationPreferenceMaintainResolution
        pFromJSVal x
          | x `js_eq` js_RTCDegradationPreferenceBalanced =
            RTCDegradationPreferenceBalanced

instance FromJSVal RTCDegradationPreference where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"maintain-framerate\""

--
-- js_RTCDegradationPreferenceMaintainFramerate
--  :: JSVal
js_RTCDegradationPreferenceMaintainFramerate :: JSVal
js_RTCDegradationPreferenceMaintainFramerate = jsNull

-- foreign import javascript unsafe "\"maintain-resolution\""

--
-- js_RTCDegradationPreferenceMaintainResolution
--  :: JSVal
js_RTCDegradationPreferenceMaintainResolution :: JSVal
js_RTCDegradationPreferenceMaintainResolution = jsNull

-- foreign import javascript unsafe "\"balanced\""

--
-- js_RTCDegradationPreferenceBalanced
--  :: JSVal
js_RTCDegradationPreferenceBalanced :: JSVal
js_RTCDegradationPreferenceBalanced = jsNull

data RTCDtxStatus = RTCDtxStatusDisabled
                  | RTCDtxStatusEnabled
                  deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCDtxStatus where
        pToJSVal RTCDtxStatusDisabled = js_RTCDtxStatusDisabled
        pToJSVal RTCDtxStatusEnabled  = js_RTCDtxStatusEnabled

instance ToJSVal RTCDtxStatus where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCDtxStatus where
        pFromJSVal x
          | x `js_eq` js_RTCDtxStatusDisabled = RTCDtxStatusDisabled
        pFromJSVal x
          | x `js_eq` js_RTCDtxStatusEnabled = RTCDtxStatusEnabled

instance FromJSVal RTCDtxStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"disabled\""

--
-- js_RTCDtxStatusDisabled
--  :: JSVal
js_RTCDtxStatusDisabled :: JSVal
js_RTCDtxStatusDisabled = jsNull

-- foreign import javascript unsafe "\"enabled\""

--
-- js_RTCDtxStatusEnabled
--  :: JSVal
js_RTCDtxStatusEnabled :: JSVal
js_RTCDtxStatusEnabled = jsNull

data RTCPriorityType = RTCPriorityTypeVeryLow
                     | RTCPriorityTypeLow
                     | RTCPriorityTypeMedium
                     | RTCPriorityTypeHigh
                     deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCPriorityType where
        pToJSVal RTCPriorityTypeVeryLow = js_RTCPriorityTypeVeryLow
        pToJSVal RTCPriorityTypeLow     = js_RTCPriorityTypeLow
        pToJSVal RTCPriorityTypeMedium  = js_RTCPriorityTypeMedium
        pToJSVal RTCPriorityTypeHigh    = js_RTCPriorityTypeHigh

instance ToJSVal RTCPriorityType where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCPriorityType where
        pFromJSVal x
          | x `js_eq` js_RTCPriorityTypeVeryLow = RTCPriorityTypeVeryLow
        pFromJSVal x | x `js_eq` js_RTCPriorityTypeLow = RTCPriorityTypeLow
        pFromJSVal x
          | x `js_eq` js_RTCPriorityTypeMedium = RTCPriorityTypeMedium
        pFromJSVal x
          | x `js_eq` js_RTCPriorityTypeHigh = RTCPriorityTypeHigh

instance FromJSVal RTCPriorityType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"very-low\""

--
-- js_RTCPriorityTypeVeryLow
--  :: JSVal
js_RTCPriorityTypeVeryLow :: JSVal
js_RTCPriorityTypeVeryLow = jsNull

-- foreign import javascript unsafe "\"low\"" js_RTCPriorityTypeLow ::
--         JSVal
js_RTCPriorityTypeLow :: JSVal
js_RTCPriorityTypeLow = jsNull

-- foreign import javascript unsafe "\"medium\""

--
-- js_RTCPriorityTypeMedium
--  :: JSVal
js_RTCPriorityTypeMedium :: JSVal
js_RTCPriorityTypeMedium = jsNull

-- foreign import javascript unsafe "\"high\""
--
-- js_RTCPriorityTypeHigh

--         :: JSVal
js_RTCPriorityTypeHigh
        :: JSVal
js_RTCPriorityTypeHigh
 = jsNull

data RTCRtpTransceiverDirection = RTCRtpTransceiverDirectionSendrecv
                                | RTCRtpTransceiverDirectionSendonly
                                | RTCRtpTransceiverDirectionRecvonly
                                | RTCRtpTransceiverDirectionInactive
                                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCRtpTransceiverDirection where
        pToJSVal RTCRtpTransceiverDirectionSendrecv
          = js_RTCRtpTransceiverDirectionSendrecv
        pToJSVal RTCRtpTransceiverDirectionSendonly
          = js_RTCRtpTransceiverDirectionSendonly
        pToJSVal RTCRtpTransceiverDirectionRecvonly
          = js_RTCRtpTransceiverDirectionRecvonly
        pToJSVal RTCRtpTransceiverDirectionInactive
          = js_RTCRtpTransceiverDirectionInactive

instance ToJSVal RTCRtpTransceiverDirection where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCRtpTransceiverDirection where
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionSendrecv =
            RTCRtpTransceiverDirectionSendrecv
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionSendonly =
            RTCRtpTransceiverDirectionSendonly
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionRecvonly =
            RTCRtpTransceiverDirectionRecvonly
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionInactive =
            RTCRtpTransceiverDirectionInactive

instance FromJSVal RTCRtpTransceiverDirection where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"sendrecv\""

--
-- js_RTCRtpTransceiverDirectionSendrecv
--  :: JSVal
js_RTCRtpTransceiverDirectionSendrecv :: JSVal
js_RTCRtpTransceiverDirectionSendrecv = jsNull

-- foreign import javascript unsafe "\"sendonly\""

--
-- js_RTCRtpTransceiverDirectionSendonly
--  :: JSVal
js_RTCRtpTransceiverDirectionSendonly :: JSVal
js_RTCRtpTransceiverDirectionSendonly = jsNull

-- foreign import javascript unsafe "\"recvonly\""

--
-- js_RTCRtpTransceiverDirectionRecvonly
--  :: JSVal
js_RTCRtpTransceiverDirectionRecvonly :: JSVal
js_RTCRtpTransceiverDirectionRecvonly = jsNull

-- foreign import javascript unsafe "\"inactive\""

--
-- js_RTCRtpTransceiverDirectionInactive
--  :: JSVal
js_RTCRtpTransceiverDirectionInactive :: JSVal
js_RTCRtpTransceiverDirectionInactive = jsNull

data RTCSdpType = RTCSdpTypeOffer
                | RTCSdpTypePranswer
                | RTCSdpTypeAnswer
                | RTCSdpTypeRollback
                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCSdpType where
        pToJSVal RTCSdpTypeOffer    = js_RTCSdpTypeOffer
        pToJSVal RTCSdpTypePranswer = js_RTCSdpTypePranswer
        pToJSVal RTCSdpTypeAnswer   = js_RTCSdpTypeAnswer
        pToJSVal RTCSdpTypeRollback = js_RTCSdpTypeRollback

instance ToJSVal RTCSdpType where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCSdpType where
        pFromJSVal x | x `js_eq` js_RTCSdpTypeOffer = RTCSdpTypeOffer
        pFromJSVal x | x `js_eq` js_RTCSdpTypePranswer = RTCSdpTypePranswer
        pFromJSVal x | x `js_eq` js_RTCSdpTypeAnswer = RTCSdpTypeAnswer
        pFromJSVal x | x `js_eq` js_RTCSdpTypeRollback = RTCSdpTypeRollback

instance FromJSVal RTCSdpType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"offer\"" js_RTCSdpTypeOffer ::
--         JSVal
js_RTCSdpTypeOffer :: JSVal
js_RTCSdpTypeOffer = jsNull

-- foreign import javascript unsafe "\"pranswer\""

--
-- js_RTCSdpTypePranswer
--  :: JSVal
js_RTCSdpTypePranswer :: JSVal
js_RTCSdpTypePranswer = jsNull

-- foreign import javascript unsafe "\"answer\""
--
-- js_RTCSdpTypeAnswer

--         :: JSVal
js_RTCSdpTypeAnswer
        :: JSVal
js_RTCSdpTypeAnswer
 = jsNull

-- foreign import javascript unsafe "\"rollback\""

--
-- js_RTCSdpTypeRollback
--  :: JSVal
js_RTCSdpTypeRollback :: JSVal
js_RTCSdpTypeRollback = jsNull

data RTCSignalingState = RTCSignalingStateStable
                       | RTCSignalingStateHaveLocalOffer
                       | RTCSignalingStateHaveRemoteOffer
                       | RTCSignalingStateHaveLocalPranswer
                       | RTCSignalingStateHaveRemotePranswer
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCSignalingState where
        pToJSVal RTCSignalingStateStable = js_RTCSignalingStateStable
        pToJSVal RTCSignalingStateHaveLocalOffer
          = js_RTCSignalingStateHaveLocalOffer
        pToJSVal RTCSignalingStateHaveRemoteOffer
          = js_RTCSignalingStateHaveRemoteOffer
        pToJSVal RTCSignalingStateHaveLocalPranswer
          = js_RTCSignalingStateHaveLocalPranswer
        pToJSVal RTCSignalingStateHaveRemotePranswer
          = js_RTCSignalingStateHaveRemotePranswer

instance ToJSVal RTCSignalingState where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCSignalingState where
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateStable = RTCSignalingStateStable
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveLocalOffer =
            RTCSignalingStateHaveLocalOffer
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveRemoteOffer =
            RTCSignalingStateHaveRemoteOffer
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveLocalPranswer =
            RTCSignalingStateHaveLocalPranswer
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveRemotePranswer =
            RTCSignalingStateHaveRemotePranswer

instance FromJSVal RTCSignalingState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"stable\""

--
-- js_RTCSignalingStateStable
--  :: JSVal
js_RTCSignalingStateStable :: JSVal
js_RTCSignalingStateStable = jsNull

-- foreign import javascript unsafe "\"have-local-offer\""

--
-- js_RTCSignalingStateHaveLocalOffer
--  :: JSVal
js_RTCSignalingStateHaveLocalOffer :: JSVal
js_RTCSignalingStateHaveLocalOffer = jsNull

-- foreign import javascript unsafe "\"have-remote-offer\""

--
-- js_RTCSignalingStateHaveRemoteOffer
--  :: JSVal
js_RTCSignalingStateHaveRemoteOffer :: JSVal
js_RTCSignalingStateHaveRemoteOffer = jsNull

-- foreign import javascript unsafe "\"have-local-pranswer\""

--
-- js_RTCSignalingStateHaveLocalPranswer
--  :: JSVal
js_RTCSignalingStateHaveLocalPranswer :: JSVal
js_RTCSignalingStateHaveLocalPranswer = jsNull

-- foreign import javascript unsafe "\"have-remote-pranswer\""

--
-- js_RTCSignalingStateHaveRemotePranswer
--  :: JSVal
js_RTCSignalingStateHaveRemotePranswer :: JSVal
js_RTCSignalingStateHaveRemotePranswer = jsNull

data RTCStatsType = RTCStatsTypeCodec
                  | RTCStatsTypeInboundRtp
                  | RTCStatsTypeOutboundRtp
                  | RTCStatsTypePeerConnection
                  | RTCStatsTypeDataChannel
                  | RTCStatsTypeTrack
                  | RTCStatsTypeTransport
                  | RTCStatsTypeCandidatePair
                  | RTCStatsTypeLocalCandidate
                  | RTCStatsTypeRemoteCandidate
                  | RTCStatsTypeCertificate
                  deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal RTCStatsType where
        pToJSVal RTCStatsTypeCodec = js_RTCStatsTypeCodec
        pToJSVal RTCStatsTypeInboundRtp = js_RTCStatsTypeInboundRtp
        pToJSVal RTCStatsTypeOutboundRtp = js_RTCStatsTypeOutboundRtp
        pToJSVal RTCStatsTypePeerConnection = js_RTCStatsTypePeerConnection
        pToJSVal RTCStatsTypeDataChannel = js_RTCStatsTypeDataChannel
        pToJSVal RTCStatsTypeTrack = js_RTCStatsTypeTrack
        pToJSVal RTCStatsTypeTransport = js_RTCStatsTypeTransport
        pToJSVal RTCStatsTypeCandidatePair = js_RTCStatsTypeCandidatePair
        pToJSVal RTCStatsTypeLocalCandidate = js_RTCStatsTypeLocalCandidate
        pToJSVal RTCStatsTypeRemoteCandidate
          = js_RTCStatsTypeRemoteCandidate
        pToJSVal RTCStatsTypeCertificate = js_RTCStatsTypeCertificate

instance ToJSVal RTCStatsType where
        toJSVal = return . pToJSVal

instance PFromJSVal RTCStatsType where
        pFromJSVal x | x `js_eq` js_RTCStatsTypeCodec = RTCStatsTypeCodec
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeInboundRtp = RTCStatsTypeInboundRtp
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeOutboundRtp = RTCStatsTypeOutboundRtp
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypePeerConnection =
            RTCStatsTypePeerConnection
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeDataChannel = RTCStatsTypeDataChannel
        pFromJSVal x | x `js_eq` js_RTCStatsTypeTrack = RTCStatsTypeTrack
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeTransport = RTCStatsTypeTransport
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeCandidatePair =
            RTCStatsTypeCandidatePair
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeLocalCandidate =
            RTCStatsTypeLocalCandidate
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeRemoteCandidate =
            RTCStatsTypeRemoteCandidate
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeCertificate = RTCStatsTypeCertificate

instance FromJSVal RTCStatsType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"codec\""
--
-- js_RTCStatsTypeCodec

--         :: JSVal
js_RTCStatsTypeCodec
        :: JSVal
js_RTCStatsTypeCodec
 = jsNull

-- foreign import javascript unsafe "\"inbound-rtp\""

--
-- js_RTCStatsTypeInboundRtp
--  :: JSVal
js_RTCStatsTypeInboundRtp :: JSVal
js_RTCStatsTypeInboundRtp = jsNull

-- foreign import javascript unsafe "\"outbound-rtp\""

--
-- js_RTCStatsTypeOutboundRtp
--  :: JSVal
js_RTCStatsTypeOutboundRtp :: JSVal
js_RTCStatsTypeOutboundRtp = jsNull

-- foreign import javascript unsafe "\"peer-connection\""

--
-- js_RTCStatsTypePeerConnection
--  :: JSVal
js_RTCStatsTypePeerConnection :: JSVal
js_RTCStatsTypePeerConnection = jsNull

-- foreign import javascript unsafe "\"data-channel\""

--
-- js_RTCStatsTypeDataChannel
--  :: JSVal
js_RTCStatsTypeDataChannel :: JSVal
js_RTCStatsTypeDataChannel = jsNull

-- foreign import javascript unsafe "\"track\""
--
-- js_RTCStatsTypeTrack

--         :: JSVal
js_RTCStatsTypeTrack
        :: JSVal
js_RTCStatsTypeTrack
 = jsNull

-- foreign import javascript unsafe "\"transport\""

--
-- js_RTCStatsTypeTransport
--  :: JSVal
js_RTCStatsTypeTransport :: JSVal
js_RTCStatsTypeTransport = jsNull

-- foreign import javascript unsafe "\"candidate-pair\""

--
-- js_RTCStatsTypeCandidatePair
--  :: JSVal
js_RTCStatsTypeCandidatePair :: JSVal
js_RTCStatsTypeCandidatePair = jsNull

-- foreign import javascript unsafe "\"local-candidate\""

--
-- js_RTCStatsTypeLocalCandidate
--  :: JSVal
js_RTCStatsTypeLocalCandidate :: JSVal
js_RTCStatsTypeLocalCandidate = jsNull

-- foreign import javascript unsafe "\"remote-candidate\""

--
-- js_RTCStatsTypeRemoteCandidate
--  :: JSVal
js_RTCStatsTypeRemoteCandidate :: JSVal
js_RTCStatsTypeRemoteCandidate = jsNull

-- foreign import javascript unsafe "\"certificate\""

--
-- js_RTCStatsTypeCertificate
--  :: JSVal
js_RTCStatsTypeCertificate :: JSVal
js_RTCStatsTypeCertificate = jsNull

data NotificationDirection = NotificationDirectionAuto
                           | NotificationDirectionLtr
                           | NotificationDirectionRtl
                           deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal NotificationDirection where
        pToJSVal NotificationDirectionAuto = js_NotificationDirectionAuto
        pToJSVal NotificationDirectionLtr  = js_NotificationDirectionLtr
        pToJSVal NotificationDirectionRtl  = js_NotificationDirectionRtl

instance ToJSVal NotificationDirection where
        toJSVal = return . pToJSVal

instance PFromJSVal NotificationDirection where
        pFromJSVal x
          | x `js_eq` js_NotificationDirectionAuto =
            NotificationDirectionAuto
        pFromJSVal x
          | x `js_eq` js_NotificationDirectionLtr = NotificationDirectionLtr
        pFromJSVal x
          | x `js_eq` js_NotificationDirectionRtl = NotificationDirectionRtl

instance FromJSVal NotificationDirection where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"auto\""

--
-- js_NotificationDirectionAuto
--  :: JSVal
js_NotificationDirectionAuto :: JSVal
js_NotificationDirectionAuto = jsNull

-- foreign import javascript unsafe "\"ltr\""

--
-- js_NotificationDirectionLtr
--  :: JSVal
js_NotificationDirectionLtr :: JSVal
js_NotificationDirectionLtr = jsNull

-- foreign import javascript unsafe "\"rtl\""

--
-- js_NotificationDirectionRtl
--  :: JSVal
js_NotificationDirectionRtl :: JSVal
js_NotificationDirectionRtl = jsNull

data AudioContextState = AudioContextStateSuspended
                       | AudioContextStateRunning
                       | AudioContextStateInterrupted
                       | AudioContextStateClosed
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal AudioContextState where
        pToJSVal AudioContextStateSuspended = js_AudioContextStateSuspended
        pToJSVal AudioContextStateRunning = js_AudioContextStateRunning
        pToJSVal AudioContextStateInterrupted
          = js_AudioContextStateInterrupted
        pToJSVal AudioContextStateClosed = js_AudioContextStateClosed

instance ToJSVal AudioContextState where
        toJSVal = return . pToJSVal

instance PFromJSVal AudioContextState where
        pFromJSVal x
          | x `js_eq` js_AudioContextStateSuspended =
            AudioContextStateSuspended
        pFromJSVal x
          | x `js_eq` js_AudioContextStateRunning = AudioContextStateRunning
        pFromJSVal x
          | x `js_eq` js_AudioContextStateInterrupted =
            AudioContextStateInterrupted
        pFromJSVal x
          | x `js_eq` js_AudioContextStateClosed = AudioContextStateClosed

instance FromJSVal AudioContextState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"suspended\""

--
-- js_AudioContextStateSuspended
--  :: JSVal
js_AudioContextStateSuspended :: JSVal
js_AudioContextStateSuspended = jsNull

-- foreign import javascript unsafe "\"running\""

--
-- js_AudioContextStateRunning
--  :: JSVal
js_AudioContextStateRunning :: JSVal
js_AudioContextStateRunning = jsNull

-- foreign import javascript unsafe "\"interrupted\""

--
-- js_AudioContextStateInterrupted
--  :: JSVal
js_AudioContextStateInterrupted :: JSVal
js_AudioContextStateInterrupted = jsNull

-- foreign import javascript unsafe "\"closed\""

--
-- js_AudioContextStateClosed
--  :: JSVal
js_AudioContextStateClosed :: JSVal
js_AudioContextStateClosed = jsNull

data BiquadFilterType = BiquadFilterTypeLowpass
                      | BiquadFilterTypeHighpass
                      | BiquadFilterTypeBandpass
                      | BiquadFilterTypeLowshelf
                      | BiquadFilterTypeHighshelf
                      | BiquadFilterTypePeaking
                      | BiquadFilterTypeNotch
                      | BiquadFilterTypeAllpass
                      deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal BiquadFilterType where
        pToJSVal BiquadFilterTypeLowpass   = js_BiquadFilterTypeLowpass
        pToJSVal BiquadFilterTypeHighpass  = js_BiquadFilterTypeHighpass
        pToJSVal BiquadFilterTypeBandpass  = js_BiquadFilterTypeBandpass
        pToJSVal BiquadFilterTypeLowshelf  = js_BiquadFilterTypeLowshelf
        pToJSVal BiquadFilterTypeHighshelf = js_BiquadFilterTypeHighshelf
        pToJSVal BiquadFilterTypePeaking   = js_BiquadFilterTypePeaking
        pToJSVal BiquadFilterTypeNotch     = js_BiquadFilterTypeNotch
        pToJSVal BiquadFilterTypeAllpass   = js_BiquadFilterTypeAllpass

instance ToJSVal BiquadFilterType where
        toJSVal = return . pToJSVal

instance PFromJSVal BiquadFilterType where
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeLowpass = BiquadFilterTypeLowpass
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeHighpass = BiquadFilterTypeHighpass
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeBandpass = BiquadFilterTypeBandpass
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeLowshelf = BiquadFilterTypeLowshelf
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeHighshelf =
            BiquadFilterTypeHighshelf
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypePeaking = BiquadFilterTypePeaking
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeNotch = BiquadFilterTypeNotch
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeAllpass = BiquadFilterTypeAllpass

instance FromJSVal BiquadFilterType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"lowpass\""

--
-- js_BiquadFilterTypeLowpass
--  :: JSVal
js_BiquadFilterTypeLowpass :: JSVal
js_BiquadFilterTypeLowpass = jsNull

-- foreign import javascript unsafe "\"highpass\""

--
-- js_BiquadFilterTypeHighpass
--  :: JSVal
js_BiquadFilterTypeHighpass :: JSVal
js_BiquadFilterTypeHighpass = jsNull

-- foreign import javascript unsafe "\"bandpass\""

--
-- js_BiquadFilterTypeBandpass
--  :: JSVal
js_BiquadFilterTypeBandpass :: JSVal
js_BiquadFilterTypeBandpass = jsNull

-- foreign import javascript unsafe "\"lowshelf\""

--
-- js_BiquadFilterTypeLowshelf
--  :: JSVal
js_BiquadFilterTypeLowshelf :: JSVal
js_BiquadFilterTypeLowshelf = jsNull

-- foreign import javascript unsafe "\"highshelf\""

--
-- js_BiquadFilterTypeHighshelf
--  :: JSVal
js_BiquadFilterTypeHighshelf :: JSVal
js_BiquadFilterTypeHighshelf = jsNull

-- foreign import javascript unsafe "\"peaking\""

--
-- js_BiquadFilterTypePeaking
--  :: JSVal
js_BiquadFilterTypePeaking :: JSVal
js_BiquadFilterTypePeaking = jsNull

-- foreign import javascript unsafe "\"notch\""

--
-- js_BiquadFilterTypeNotch
--  :: JSVal
js_BiquadFilterTypeNotch :: JSVal
js_BiquadFilterTypeNotch = jsNull

-- foreign import javascript unsafe "\"allpass\""

--
-- js_BiquadFilterTypeAllpass
--  :: JSVal
js_BiquadFilterTypeAllpass :: JSVal
js_BiquadFilterTypeAllpass = jsNull

data OscillatorType = OscillatorTypeSine
                    | OscillatorTypeSquare
                    | OscillatorTypeSawtooth
                    | OscillatorTypeTriangle
                    | OscillatorTypeCustom
                    deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal OscillatorType where
        pToJSVal OscillatorTypeSine     = js_OscillatorTypeSine
        pToJSVal OscillatorTypeSquare   = js_OscillatorTypeSquare
        pToJSVal OscillatorTypeSawtooth = js_OscillatorTypeSawtooth
        pToJSVal OscillatorTypeTriangle = js_OscillatorTypeTriangle
        pToJSVal OscillatorTypeCustom   = js_OscillatorTypeCustom

instance ToJSVal OscillatorType where
        toJSVal = return . pToJSVal

instance PFromJSVal OscillatorType where
        pFromJSVal x | x `js_eq` js_OscillatorTypeSine = OscillatorTypeSine
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeSquare = OscillatorTypeSquare
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeSawtooth = OscillatorTypeSawtooth
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeTriangle = OscillatorTypeTriangle
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeCustom = OscillatorTypeCustom

instance FromJSVal OscillatorType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"sine\""
--
-- js_OscillatorTypeSine

--         :: JSVal
js_OscillatorTypeSine
        :: JSVal
js_OscillatorTypeSine
 = jsNull

-- foreign import javascript unsafe "\"square\""

--
-- js_OscillatorTypeSquare
--  :: JSVal
js_OscillatorTypeSquare :: JSVal
js_OscillatorTypeSquare = jsNull

-- foreign import javascript unsafe "\"sawtooth\""

--
-- js_OscillatorTypeSawtooth
--  :: JSVal
js_OscillatorTypeSawtooth :: JSVal
js_OscillatorTypeSawtooth = jsNull

-- foreign import javascript unsafe "\"triangle\""

--
-- js_OscillatorTypeTriangle
--  :: JSVal
js_OscillatorTypeTriangle :: JSVal
js_OscillatorTypeTriangle = jsNull

-- foreign import javascript unsafe "\"custom\""

--
-- js_OscillatorTypeCustom
--  :: JSVal
js_OscillatorTypeCustom :: JSVal
js_OscillatorTypeCustom = jsNull

data PanningModelType = PanningModelTypeEqualpower
                      | PanningModelTypeHRTF
                      deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal PanningModelType where
        pToJSVal PanningModelTypeEqualpower = js_PanningModelTypeEqualpower
        pToJSVal PanningModelTypeHRTF       = js_PanningModelTypeHRTF

instance ToJSVal PanningModelType where
        toJSVal = return . pToJSVal

instance PFromJSVal PanningModelType where
        pFromJSVal x
          | x `js_eq` js_PanningModelTypeEqualpower =
            PanningModelTypeEqualpower
        pFromJSVal x
          | x `js_eq` js_PanningModelTypeHRTF = PanningModelTypeHRTF

instance FromJSVal PanningModelType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"equalpower\""

--
-- js_PanningModelTypeEqualpower
--  :: JSVal
js_PanningModelTypeEqualpower :: JSVal
js_PanningModelTypeEqualpower = jsNull

-- foreign import javascript unsafe "\"HRTF\""
--
-- js_PanningModelTypeHRTF

--         :: JSVal
js_PanningModelTypeHRTF
        :: JSVal
js_PanningModelTypeHRTF
 = jsNull

data DistanceModelType = DistanceModelTypeLinear
                       | DistanceModelTypeInverse
                       | DistanceModelTypeExponential
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal DistanceModelType where
        pToJSVal DistanceModelTypeLinear = js_DistanceModelTypeLinear
        pToJSVal DistanceModelTypeInverse = js_DistanceModelTypeInverse
        pToJSVal DistanceModelTypeExponential
          = js_DistanceModelTypeExponential

instance ToJSVal DistanceModelType where
        toJSVal = return . pToJSVal

instance PFromJSVal DistanceModelType where
        pFromJSVal x
          | x `js_eq` js_DistanceModelTypeLinear = DistanceModelTypeLinear
        pFromJSVal x
          | x `js_eq` js_DistanceModelTypeInverse = DistanceModelTypeInverse
        pFromJSVal x
          | x `js_eq` js_DistanceModelTypeExponential =
            DistanceModelTypeExponential

instance FromJSVal DistanceModelType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"linear\""

--
-- js_DistanceModelTypeLinear
--  :: JSVal
js_DistanceModelTypeLinear :: JSVal
js_DistanceModelTypeLinear = jsNull

-- foreign import javascript unsafe "\"inverse\""

--
-- js_DistanceModelTypeInverse
--  :: JSVal
js_DistanceModelTypeInverse :: JSVal
js_DistanceModelTypeInverse = jsNull

-- foreign import javascript unsafe "\"exponential\""

--
-- js_DistanceModelTypeExponential
--  :: JSVal
js_DistanceModelTypeExponential :: JSVal
js_DistanceModelTypeExponential = jsNull

data OverSampleType = OverSampleTypeNone
                    | OverSampleType2x
                    | OverSampleType4x
                    deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal OverSampleType where
        pToJSVal OverSampleTypeNone = js_OverSampleTypeNone
        pToJSVal OverSampleType2x   = js_OverSampleType2x
        pToJSVal OverSampleType4x   = js_OverSampleType4x

instance ToJSVal OverSampleType where
        toJSVal = return . pToJSVal

instance PFromJSVal OverSampleType where
        pFromJSVal x | x `js_eq` js_OverSampleTypeNone = OverSampleTypeNone
        pFromJSVal x | x `js_eq` js_OverSampleType2x = OverSampleType2x
        pFromJSVal x | x `js_eq` js_OverSampleType4x = OverSampleType4x

instance FromJSVal OverSampleType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"none\""
--
-- js_OverSampleTypeNone

--         :: JSVal
js_OverSampleTypeNone
        :: JSVal
js_OverSampleTypeNone
 = jsNull

-- foreign import javascript unsafe "\"2x\"" js_OverSampleType2x ::
--         JSVal
js_OverSampleType2x :: JSVal
js_OverSampleType2x = jsNull

-- foreign import javascript unsafe "\"4x\"" js_OverSampleType4x ::
--         JSVal
js_OverSampleType4x :: JSVal
js_OverSampleType4x = jsNull

data ScrollRestoration = ScrollRestorationAuto
                       | ScrollRestorationManual
                       deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal ScrollRestoration where
        pToJSVal ScrollRestorationAuto   = js_ScrollRestorationAuto
        pToJSVal ScrollRestorationManual = js_ScrollRestorationManual

instance ToJSVal ScrollRestoration where
        toJSVal = return . pToJSVal

instance PFromJSVal ScrollRestoration where
        pFromJSVal x
          | x `js_eq` js_ScrollRestorationAuto = ScrollRestorationAuto
        pFromJSVal x
          | x `js_eq` js_ScrollRestorationManual = ScrollRestorationManual

instance FromJSVal ScrollRestoration where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- foreign import javascript unsafe "\"auto\""

--
-- js_ScrollRestorationAuto
--  :: JSVal
js_ScrollRestorationAuto :: JSVal
js_ScrollRestorationAuto = jsNull

-- foreign import javascript unsafe "\"manual\""

--
-- js_ScrollRestorationManual
--  :: JSVal
js_ScrollRestorationManual :: JSVal
js_ScrollRestorationManual = jsNull

data XMLHttpRequestResponseType = XMLHttpRequestResponseType
                                | XMLHttpRequestResponseTypeArraybuffer
                                | XMLHttpRequestResponseTypeBlob
                                | XMLHttpRequestResponseTypeDocument
                                | XMLHttpRequestResponseTypeJson
                                | XMLHttpRequestResponseTypeText
                                deriving (Show, Read, Eq, Ord, Typeable)

instance PToJSVal XMLHttpRequestResponseType where
        pToJSVal XMLHttpRequestResponseType = js_XMLHttpRequestResponseType
        pToJSVal XMLHttpRequestResponseTypeArraybuffer
          = js_XMLHttpRequestResponseTypeArraybuffer
        pToJSVal XMLHttpRequestResponseTypeBlob
          = js_XMLHttpRequestResponseTypeBlob
        pToJSVal XMLHttpRequestResponseTypeDocument
          = js_XMLHttpRequestResponseTypeDocument
        pToJSVal XMLHttpRequestResponseTypeJson
          = js_XMLHttpRequestResponseTypeJson
        pToJSVal XMLHttpRequestResponseTypeText
          = js_XMLHttpRequestResponseTypeText

instance ToJSVal XMLHttpRequestResponseType where
        toJSVal = return . pToJSVal

instance PFromJSVal XMLHttpRequestResponseType where
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseType =
            XMLHttpRequestResponseType
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeArraybuffer =
            XMLHttpRequestResponseTypeArraybuffer
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeBlob =
            XMLHttpRequestResponseTypeBlob
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeDocument =
            XMLHttpRequestResponseTypeDocument
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeJson =
            XMLHttpRequestResponseTypeJson
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeText =
            XMLHttpRequestResponseTypeText

instance FromJSVal XMLHttpRequestResponseType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal

-- -- foreign import javascript unsafe "\"\""

-- --
-- js_XMLHttpRequestResponseType
--  :: JSVal
js_XMLHttpRequestResponseType :: JSVal
js_XMLHttpRequestResponseType = jsNull

-- -- foreign import javascript unsafe "\"arraybuffer\""

-- --
-- js_XMLHttpRequestResponseTypeArraybuffer
--  :: JSVal
js_XMLHttpRequestResponseTypeArraybuffer :: JSVal
js_XMLHttpRequestResponseTypeArraybuffer = jsNull

-- -- foreign import javascript unsafe "\"blob\""

-- --
-- js_XMLHttpRequestResponseTypeBlob
--  :: JSVal
js_XMLHttpRequestResponseTypeBlob :: JSVal
js_XMLHttpRequestResponseTypeBlob = jsNull

-- -- foreign import javascript unsafe "\"document\""

-- --
-- js_XMLHttpRequestResponseTypeDocument
--  :: JSVal
js_XMLHttpRequestResponseTypeDocument :: JSVal
js_XMLHttpRequestResponseTypeDocument = jsNull

-- -- foreign import javascript unsafe "\"json\""

-- --
-- js_XMLHttpRequestResponseTypeJson
--  :: JSVal
js_XMLHttpRequestResponseTypeJson :: JSVal
js_XMLHttpRequestResponseTypeJson = jsNull

-- -- foreign import javascript unsafe "\"text\""

-- --
-- js_XMLHttpRequestResponseTypeText
--  :: JSVal
js_XMLHttpRequestResponseTypeText :: JSVal
js_XMLHttpRequestResponseTypeText = jsNull
