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
.method private constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onChildClick(Landroid/view/View;III)V
    .registers 6

    .line 1
    const-string v0, "onChildClick"

    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_53

    .line 14
    const-string p2, "2.0"

    .line 16
    invoke-static {p2}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p2, :cond_28

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 26
    new-instance p2, Lmiuix/util/HapticFeedbackCompat;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p2, p1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 35
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 37
    invoke-virtual {p2, p1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 44
    :goto_2b
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 46
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isChildChecked(II)Z

    .line 53
    move-result p1

    .line 54
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 56
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isSingleMode()Z

    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_4b

    .line 62
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 64
    invoke-static {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    .line 71
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 73
    invoke-static {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 76
    :cond_4b
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 78
    xor-int/lit8 p1, p1, 0x1

    .line 80
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChildChecked(ZII)V

    .line 83
    goto :goto_5e

    .line 84
    :cond_53
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5e

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 92
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildClick(Landroid/view/View;III)V

    .line 95
    :cond_5e
    :goto_5e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 98
    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 11

    .line 1
    const-string v0, "onChildLongClick"

    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_11

    .line 16
    move v1, v3

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v1, v2

    .line 19
    :goto_12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$402(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)Z

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_26

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$500(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_89

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 41
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isChildChecked(II)Z

    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 51
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isSingleMode()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_46

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 59
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    .line 66
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 68
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 71
    :cond_46
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 73
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->enableLongPressToUnCheck()Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5a

    .line 79
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 81
    xor-int/2addr v0, v3

    .line 82
    invoke-virtual {v1, v0, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChildChecked(ZII)V

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 87
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 90
    goto :goto_88

    .line 91
    :cond_5a
    if-nez v0, :cond_88

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 95
    xor-int/2addr v0, v3

    .line 96
    invoke-virtual {v1, v0, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChildChecked(ZII)V

    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 101
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$600(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_83

    .line 107
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 109
    if-eqz v0, :cond_7d

    .line 111
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper$1;

    .line 117
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper$1;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;)V

    .line 120
    const-wide/16 v4, 0x190

    .line 122
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    goto :goto_88

    .line 126
    :cond_7d
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 128
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 131
    goto :goto_88

    .line 132
    :cond_83
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 134
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 137
    :cond_88
    :goto_88
    move v2, v3

    .line 138
    :cond_89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 141
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_99

    .line 147
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 149
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildLongClick(Landroid/view/View;III)Z

    .line 152
    move-result p1

    .line 153
    return p1

    .line 154
    :cond_99
    return v2
.end method

.method public setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 3
    return-void
.end method
