.class Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;
.super Ljava/lang/Object;
.source "CheckableChildRecyclerViewAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnChildClickListenerWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field private wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onChildClick(Landroid/view/View;III)V
    .registers 6

    const-string v0, "onChildClick"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_53

    const-string p2, "2.0"

    invoke-static {p2}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_28

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance p2, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    invoke-virtual {p2, p1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    goto :goto_2b

    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_2b
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isChildChecked(II)Z

    move-result p1

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isSingleMode()Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    :cond_4b
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChildChecked(ZII)V

    goto :goto_5e

    :cond_53
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildClick(Landroid/view/View;III)V

    :cond_5e
    :goto_5e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 11

    const-string v0, "onChildLongClick"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$402(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)Z

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$500(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_89

    :cond_26
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isChildChecked(II)Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isSingleMode()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    :cond_46
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->enableLongPressToUnCheck()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChildChecked(ZII)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    goto :goto_88

    :cond_5a
    if-nez v0, :cond_88

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChildChecked(ZII)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$600(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Z

    move-result v0

    if-eqz v0, :cond_83

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v0, :cond_7d

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper$1;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_88

    :cond_7d
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_88

    :cond_83
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_88
    :goto_88
    move v2, v3

    :cond_89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildLongClick(Landroid/view/View;III)Z

    move-result p1

    return p1

    :cond_99
    return v2
.end method

.method public setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    return-void
.end method
