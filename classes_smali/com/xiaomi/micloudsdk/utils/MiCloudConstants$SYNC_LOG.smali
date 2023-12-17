.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;
.super Ljava/lang/Object;
.source "MiCloudConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYNC_LOG"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.cloudservice.sync.SyncLogProvider"

.field public static final KEY_AUTHORITY:Ljava/lang/String; = "sync_log_key_authority"

.field public static final KEY_REMOTE_LOGGER:Ljava/lang/String; = "sync_log_key_remote_logger"

.field public static final METHOD_OPEN_SYNC_LOG:Ljava/lang/String; = "OPEN_SYNC_LOG"

.field public static final URI_PROVIDER:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.miui.cloudservice.sync.SyncLogProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;->URI_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
