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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/PathGallery;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$2;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$2;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    iget-object v0, p1, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/android/fileexplorer/view/PathGallery;->access$000(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;->onPathItemClickListener(Ljava/lang/String;)Z

    goto :goto_19

    :cond_10
    iget-object v0, p1, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    invoke-static {p1}, Lcom/android/fileexplorer/view/PathGallery;->access$000(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;->onPathItemClickListener(Lcom/android/fileexplorer/model/PathSegment;)Z

    :goto_19
    return-void
.end method
