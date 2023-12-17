.class Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;
.super Landroid/view/animation/Animation;
.source "RXmasHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startPullEndAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->access$000(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->scaleByPull(F)V

    goto :goto_a

    :cond_1d
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->access$100(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    move-result-object p2

    sub-float/2addr v1, p1

    invoke-virtual {p2, v1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;->cutByPull(F)V

    return-void
.end method
