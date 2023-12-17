.class Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;
.super Ljava/lang/Object;
.source "EditableRecyclerViewWrapper.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public holders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v1, v1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v1

    instance-of v1, v1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v1, v1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->onStart(Z)V

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_56

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v2, v2, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v3, v3, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v2

    instance-of v3, v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    if-eqz v3, :cond_53

    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationStart(Z)V

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_56
    return-void
.end method

.method public onStop(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setIsPendingActionModeAnim(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setIsPendingActionModeAnim(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->onStop(Z)V

    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    invoke-interface {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationStop(Z)V

    goto :goto_38

    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$300(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    :cond_56
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->onUpdate(ZF)V

    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_5a

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v2, v2, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    iget-object v3, v3, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v2

    instance-of v3, v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    if-eqz v3, :cond_57

    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    invoke-interface {v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->hasAnimationStarted()Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationStart(Z)V

    :cond_4f
    invoke-interface {v2, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationUpdate(ZF)V

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_5a
    return-void
.end method
