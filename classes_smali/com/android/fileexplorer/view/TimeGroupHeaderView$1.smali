.class Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;
.super Ljava/lang/Object;
.source "TimeGroupHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/TimeGroupHeaderView;->bindView(Lcom/android/fileexplorer/model/group/FileGroupParent;ZZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/TimeGroupHeaderView;

.field public final synthetic val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

.field public final synthetic val$isActionMode:Z

.field public final synthetic val$onClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

.field public final synthetic val$position:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/TimeGroupHeaderView;Lcom/android/fileexplorer/model/group/FileGroupParent;ZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->this$0:Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    iput-object p2, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$isActionMode:Z

    iput-object p4, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$onClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    iput p5, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    const-string p1, "isActionMode = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$isActionMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCheckedAll = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeGroupHeaderView"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->this$0:Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->updateOnScreenViewByActionMode(ZZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$onClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v1, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    iget v2, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;->val$position:I

    invoke-interface {p1, v1, v2, v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onCheckAllStatusChange(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V

    :cond_3e
    return-void
.end method
