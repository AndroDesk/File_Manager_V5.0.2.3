.class public Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;
.super Ljava/lang/Object;
.source "DocSnapShotLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoader;
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

.field public result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

.field public sizeDes:Ljava/lang/String;

.field public snapshot:Ljava/lang/Object;


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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->sizeDes:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->imageView:Landroid/widget/ImageView;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->sizeDes:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->snapshot:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    return-void
.end method
