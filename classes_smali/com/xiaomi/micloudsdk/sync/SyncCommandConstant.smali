.class public Lcom/xiaomi/micloudsdk/sync/SyncCommandConstant;
.super Ljava/lang/Object;
.source "SyncCommandConstant.java"


# static fields
.field public static final ACTION_SYNC_COMMAND:Ljava/lang/String; = "com.xiaomi.micloud.action.SYNC_COMMAND"

.field public static final KEY_COMMAND:Ljava/lang/String; = "key_command"

.field public static final SUPPORT_COMMAND_PKGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_COMMAND_CANCEL_SYNC:Ljava/lang/String; = "value_command_cancel_sync"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/SyncCommandConstant;->SUPPORT_COMMAND_PKGS:Ljava/util/Map;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "com.miui.gallery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
