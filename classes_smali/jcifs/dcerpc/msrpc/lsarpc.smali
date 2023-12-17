.class public Ljcifs/dcerpc/msrpc/lsarpc;
.super Ljava/lang/Object;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/lsarpc$LsarClose;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;,
        Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;
    }
.end annotation


# static fields
.field public static final POLICY_INFO_ACCOUNT_DOMAIN:I

.field public static final POLICY_INFO_AUDIT_EVENTS:I

.field public static final POLICY_INFO_DNS_DOMAIN:I

.field public static final POLICY_INFO_MODIFICATION:I

.field public static final POLICY_INFO_PRIMARY_DOMAIN:I

.field public static final POLICY_INFO_SERVER_ROLE:I

.field public static final SID_NAME_ALIAS:I

.field public static final SID_NAME_DELETED:I

.field public static final SID_NAME_DOMAIN:I

.field public static final SID_NAME_DOM_GRP:I

.field public static final SID_NAME_INVALID:I

.field public static final SID_NAME_UNKNOWN:I

.field public static final SID_NAME_USER:I

.field public static final SID_NAME_USE_NONE:I

.field public static final SID_NAME_WKN_GRP:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->POLICY_INFO_ACCOUNT_DOMAIN:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->POLICY_INFO_AUDIT_EVENTS:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->POLICY_INFO_DNS_DOMAIN:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->POLICY_INFO_MODIFICATION:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->POLICY_INFO_PRIMARY_DOMAIN:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->POLICY_INFO_SERVER_ROLE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_ALIAS:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_DELETED:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_DOMAIN:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_DOM_GRP:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_INVALID:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_UNKNOWN:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_USER:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_USE_NONE:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/lsarpc;->SID_NAME_WKN_GRP:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .registers 1

    const-string v0, "12345778-1234-abcd-ef00-0123456789ab:0.0"

    return-object v0
.end method
