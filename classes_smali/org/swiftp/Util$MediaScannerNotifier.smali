.class Lorg/swiftp/Util$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftp/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private connection:Landroid/media/MediaScannerConnection;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lorg/swiftp/Util$MediaScannerNotifier;->path:Ljava/lang/String;

    .line 6
    new-instance p2, Landroid/media/MediaScannerConnection;

    .line 8
    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 11
    iput-object p2, p0, Lorg/swiftp/Util$MediaScannerNotifier;->connection:Landroid/media/MediaScannerConnection;

    .line 13
    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    .line 16
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/swiftp/Util$MediaScannerNotifier;->connection:Landroid/media/MediaScannerConnection;

    .line 3
    iget-object v1, p0, Lorg/swiftp/Util$MediaScannerNotifier;->path:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lorg/swiftp/Util$MediaScannerNotifier;->connection:Landroid/media/MediaScannerConnection;

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 6
    return-void
.end method
