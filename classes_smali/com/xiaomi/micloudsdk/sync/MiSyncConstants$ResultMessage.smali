.class public Lcom/xiaomi/micloudsdk/sync/MiSyncConstants$ResultMessage;
.super Ljava/lang/Object;
.source "MiSyncConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/MiSyncConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultMessage"
.end annotation


# static fields
.field public static final MESG_CLOUD_STORAGE_FULL:Ljava/lang/String; = "cloud_storage_full"

.field public static final MESG_CTA_ERROR:Ljava/lang/String; = "permission_error"

.field public static final MESG_GDPR_ERROR:Ljava/lang/String; = "gdpr_error"

.field public static final MESG_PAUSE_LIMIT:Ljava/lang/String; = "pause_limit"

.field private static final MESG_PERMISSION_ERROR:Ljava/lang/String; = "permission_error"

.field public static final MESG_PERMISSION_LIMIT:Ljava/lang/String; = "permission_limit"

.field public static final MESG_REQUEST_ERROR:Ljava/lang/String; = "request_error"

.field public static final MESG_SECURE_SPACE_LIMIT:Ljava/lang/String; = "secure_space_limit"

.field public static final MESG_SIM_ACTIVATED_ERROR:Ljava/lang/String; = "sim_activated_error"

.field public static final MESG_SWITCH_OFF:Ljava/lang/String; = "switch_off"

.field public static final MESG_WLAN_ONLY:Ljava/lang/String; = "wlan_only"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
