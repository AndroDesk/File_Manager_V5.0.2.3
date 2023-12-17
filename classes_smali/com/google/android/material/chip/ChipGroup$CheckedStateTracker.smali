.class Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$300(Lcom/google/android/material/chip/ChipGroup;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipIds()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_32

    .line 23
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 25
    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_32

    .line 31
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-static {p2, v0, v2}, Lcom/google/android/material/chip/ChipGroup;->access$500(Lcom/google/android/material/chip/ChipGroup;IZ)V

    .line 41
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 46
    move-result p1

    .line 47
    invoke-static {p2, p1, v1}, Lcom/google/android/material/chip/ChipGroup;->access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V

    .line 50
    return-void

    .line 51
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 54
    move-result p1

    .line 55
    const/4 v0, -0x1

    .line 56
    if-eqz p2, :cond_60

    .line 58
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 60
    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;)I

    .line 63
    move-result p2

    .line 64
    if-eq p2, v0, :cond_5a

    .line 66
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 68
    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;)I

    .line 71
    move-result p2

    .line 72
    if-eq p2, p1, :cond_5a

    .line 74
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 76
    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$800(Lcom/google/android/material/chip/ChipGroup;)Z

    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_5a

    .line 82
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 84
    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;)I

    .line 87
    move-result v0

    .line 88
    invoke-static {p2, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->access$500(Lcom/google/android/material/chip/ChipGroup;IZ)V

    .line 91
    :cond_5a
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 93
    invoke-static {p2, p1}, Lcom/google/android/material/chip/ChipGroup;->access$900(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 96
    goto :goto_6d

    .line 97
    :cond_60
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 99
    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;)I

    .line 102
    move-result p2

    .line 103
    if-ne p2, p1, :cond_6d

    .line 105
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 107
    invoke-static {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->access$900(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method
