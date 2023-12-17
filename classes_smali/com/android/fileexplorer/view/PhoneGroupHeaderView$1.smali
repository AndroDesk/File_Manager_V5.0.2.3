.class Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;
.super Ljava/lang/Object;
.source "PhoneGroupHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->bindData(ZZLcom/android/fileexplorer/model/group/FileGroupParent;Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

.field public final synthetic val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

.field public final synthetic val$isCheckMode:Z

.field public final synthetic val$onGroupClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/PhoneGroupHeaderView;Lcom/android/fileexplorer/model/group/FileGroupParent;ZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->this$0:Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$isCheckMode:Z

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$onGroupClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    .line 9
    iput p5, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$position:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 3
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    iput-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 9
    const-string p1, "isActionMode = "

    .line 11
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p1

    .line 15
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$isCheckMode:Z

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, ", mCheckedAll = "

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 27
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "PhoneGroupHeaderView"

    .line 38
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->this$0:Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 45
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZ)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$onGroupClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    .line 52
    if-eqz p1, :cond_3e

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$groupParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 56
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 58
    iget v2, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;->val$position:I

    .line 60
    invoke-interface {p1, v1, v2, v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onCheckAllStatusChange(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V

    .line 63
    :cond_3e
    return-void
.end method
