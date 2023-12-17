.class public Lmiui/cloud/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/Constants$Analytics;,
        Lmiui/cloud/Constants$Intents;,
        Lmiui/cloud/Constants$UserData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CLOUDSERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.miui.cloudservice"

.field public static final ENABLE_ANALYTICS:Z = true

.field public static final SYNC_WITHOUT_ACTIVATE_SIM_INDEX:I

.field public static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field public static final XMSF_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.xmsf"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/Constants;->SYNC_WITHOUT_ACTIVATE_SIM_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
