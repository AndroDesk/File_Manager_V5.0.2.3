.class Lcom/android/fileexplorer/view/PathGallery$2;
.super Ljava/lang/Object;
.source "PathGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/PathGallery;->initFirstPathView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/PathGallery;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/PathGallery;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$2;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$2;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    iget-object v0, p1, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/view/PathGallery;->access$000(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/model/PathSegment;

    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 13
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;->onPathItemClickListener(Ljava/lang/String;)Z

    .line 16
    goto :goto_19

    .line 17
    :cond_10
    iget-object v0, p1, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/view/PathGallery;->access$000(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/model/PathSegment;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;->onPathItemClickListener(Lcom/android/fileexplorer/model/PathSegment;)Z

    .line 26
    :goto_19
    return-void
.end method
