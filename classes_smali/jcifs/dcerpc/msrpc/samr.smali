.class public Ljcifs/dcerpc/msrpc/samr;
.super Ljava/lang/Object;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/samr$SamrCloseHandle;,
        Ljcifs/dcerpc/msrpc/samr$SamrConnect2;,
        Ljcifs/dcerpc/msrpc/samr$SamrConnect4;,
        Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;,
        Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;,
        Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;,
        Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;,
        Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;,
        Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;,
        Ljcifs/dcerpc/msrpc/samr$SamrSamArray;,
        Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;
    }
.end annotation


# static fields
.field public static final ACB_AUTOLOCK:I

.field public static final ACB_DISABLED:I

.field public static final ACB_DOMTRUST:I

.field public static final ACB_DONT_REQUIRE_PREAUTH:I

.field public static final ACB_ENC_TXT_PWD_ALLOWED:I

.field public static final ACB_HOMDIRREQ:I

.field public static final ACB_MNS:I

.field public static final ACB_NORMAL:I

.field public static final ACB_NOT_DELEGATED:I

.field public static final ACB_PWNOEXP:I

.field public static final ACB_PWNOTREQ:I

.field public static final ACB_SMARTCARD_REQUIRED:I

.field public static final ACB_SVRTRUST:I

.field public static final ACB_TEMPDUP:I

.field public static final ACB_TRUSTED_FOR_DELEGATION:I

.field public static final ACB_USE_DES_KEY_ONLY:I

.field public static final ACB_WSTRUST:I

.field public static final SE_GROUP_ENABLED:I

.field public static final SE_GROUP_ENABLED_BY_DEFAULT:I

.field public static final SE_GROUP_LOGON_ID:I

.field public static final SE_GROUP_MANDATORY:I

.field public static final SE_GROUP_OWNER:I

.field public static final SE_GROUP_RESOURCE:I

.field public static final SE_GROUP_USE_FOR_DENY_ONLY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92996

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_AUTOLOCK:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_DISABLED:I

    const v0, 0x92dd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_DOMTRUST:I

    const v0, 0x82d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_DONT_REQUIRE_PREAUTH:I

    const v0, 0x92596

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_ENC_TXT_PWD_ALLOWED:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_HOMDIRREQ:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_MNS:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_NORMAL:I

    const v0, 0x96d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_NOT_DELEGATED:I

    const v0, 0x92f96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_PWNOEXP:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_PWNOTREQ:I

    const v0, 0x93d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_SMARTCARD_REQUIRED:I

    const v0, 0x92c96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_SVRTRUST:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_TEMPDUP:I

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_TRUSTED_FOR_DELEGATION:I

    const v0, 0x9ad96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_USE_DES_KEY_ONLY:I

    const v0, 0x92d16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->ACB_WSTRUST:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->SE_GROUP_ENABLED:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->SE_GROUP_ENABLED_BY_DEFAULT:I

    const v0, -0x3ff6d26a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->SE_GROUP_LOGON_ID:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->SE_GROUP_MANDATORY:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->SE_GROUP_OWNER:I

    const v0, 0x20092d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->SE_GROUP_RESOURCE:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/dcerpc/msrpc/samr;->SE_GROUP_USE_FOR_DENY_ONLY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .registers 1

    const-string v0, "12345778-1234-abcd-ef00-0123456789ac:1.0"

    return-object v0
.end method
