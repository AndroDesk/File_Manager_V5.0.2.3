.class public Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;
.super Ljava/lang/Object;
.source "DocSnapShotLoaderV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocSnapShot"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public path:Ljava/lang/String;

.field public requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public result:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoadSnapshotResult;

.field public sizeDes:Ljava/lang/String;

.field public snapshot:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoadSnapshotResult;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->path:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->sizeDes:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoadSnapshotResult;

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->imageView:Landroid/widget/ImageView;

    .line 4
    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->path:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->sizeDes:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->snapshot:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoadSnapshotResult;

    .line 16
    return-void
.end method
