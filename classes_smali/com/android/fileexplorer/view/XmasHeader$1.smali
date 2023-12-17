.class Lcom/android/fileexplorer/view/XmasHeader$1;
.super Landroid/view/animation/Animation;
.source "XmasHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/XmasHeader;->startPullEndAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/XmasHeader;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/XmasHeader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader$1;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/view/XmasHeader$1;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 3
    invoke-static {p2}, Lcom/android/fileexplorer/view/XmasHeader;->access$000(Lcom/android/fileexplorer/view/XmasHeader;)Ljava/util/List;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p2

    .line 11
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x3f800000  # 1.0f

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    .line 25
    sub-float/2addr v1, p1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->scaleByPull(F)V

    .line 29
    goto :goto_a

    .line 30
    :cond_1d
    iget-object p2, p0, Lcom/android/fileexplorer/view/XmasHeader$1;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 32
    invoke-static {p2}, Lcom/android/fileexplorer/view/XmasHeader;->access$100(Lcom/android/fileexplorer/view/XmasHeader;)Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 35
    move-result-object p2

    .line 36
    sub-float/2addr v1, p1

    .line 37
    invoke-virtual {p2, v1}, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->cutByPull(F)V

    .line 40
    return-void
.end method
