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
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    .line 13
    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 8
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 20
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 22
    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 25
    move-result-object v1

    .line 26
    instance-of v1, v1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 28
    if-eqz v1, :cond_2a

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 32
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 40
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->onStart(Z)V

    .line 43
    :cond_2a
    const/4 v1, 0x0

    .line 44
    :goto_2b
    if-ge v1, v0, :cond_56

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 48
    iget-object v2, v2, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 50
    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 60
    iget-object v3, v3, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 62
    invoke-static {v3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 69
    move-result-object v2

    .line 70
    instance-of v3, v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 72
    if-eqz v3, :cond_53

    .line 74
    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 76
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    .line 78
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationStart(Z)V

    .line 84
    :cond_53
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_2b

    .line 87
    :cond_56
    return-void
.end method

.method public onStop(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setIsPendingActionModeAnim(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 23
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setIsPendingActionModeAnim(Z)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 28
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 33
    move-result-object v0

    .line 34
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 36
    if-eqz v0, :cond_32

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 40
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 42
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 48
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->onStop(Z)V

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 57
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_48

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 69
    invoke-interface {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationStop(Z)V

    .line 72
    goto :goto_38

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 78
    if-nez p1, :cond_56

    .line 80
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 82
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 84
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$300(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    .line 87
    :cond_56
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 11
    if-eqz v0, :cond_19

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->onUpdate(ZF)V

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 28
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_26
    if-ge v1, v0, :cond_5a

    .line 41
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 43
    iget-object v2, v2, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 45
    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    .line 55
    iget-object v3, v3, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 57
    invoke-static {v3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 64
    move-result-object v2

    .line 65
    instance-of v3, v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 67
    if-eqz v3, :cond_57

    .line 69
    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 71
    invoke-interface {v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->hasAnimationStarted()Z

    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_4f

    .line 77
    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationStart(Z)V

    .line 80
    :cond_4f
    invoke-interface {v2, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onAnimationUpdate(ZF)V

    .line 83
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;->holders:Ljava/util/Set;

    .line 85
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_57
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_26

    .line 91
    :cond_5a
    return-void
.end method
