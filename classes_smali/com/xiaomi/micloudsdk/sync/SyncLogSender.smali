.class abstract Lcom/xiaomi/micloudsdk/sync/SyncLogSender;
.super Ljava/lang/Object;
.source "SyncLogSender.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncLogSender"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract openSyncLog()V
.end method

.method public abstract release()V
.end method

.method public abstract sendLog(Ljava/lang/String;Ljava/lang/String;)V
.end method
