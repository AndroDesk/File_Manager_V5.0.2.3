.class Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "MaterialAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    if-gez p3, :cond_18

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 6
    invoke-static {v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/k0;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_11

    .line 16
    move-object v0, p1

    .line 17
    goto :goto_22

    .line 18
    :cond_11
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 20
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_22

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 27
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    :goto_22
    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 37
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$100(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 42
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_82

    .line 48
    if-eqz p2, :cond_38

    .line 50
    if-gez p3, :cond_34

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    :goto_34
    move-object v3, p2

    .line 54
    move v4, p3

    .line 55
    move-wide v5, p4

    .line 56
    goto :goto_77

    .line 57
    :cond_38
    :goto_38
    iget-object p2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 59
    invoke-static {p2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/k0;

    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 66
    move-result p3

    .line 67
    if-nez p3, :cond_45

    .line 69
    goto :goto_4b

    .line 70
    :cond_45
    iget-object p1, p2, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 72
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    :goto_4b
    move-object p2, p1

    .line 77
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 79
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/k0;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 86
    move-result p3

    .line 87
    if-nez p3, :cond_5a

    .line 89
    const/4 p1, -0x1

    .line 90
    goto :goto_60

    .line 91
    :cond_5a
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 93
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 96
    move-result p1

    .line 97
    :goto_60
    move p3, p1

    .line 98
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 100
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/k0;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 107
    move-result p4

    .line 108
    if-nez p4, :cond_70

    .line 110
    const-wide/high16 p4, -0x8000000000000000L

    .line 112
    goto :goto_34

    .line 113
    :cond_70
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 115
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 118
    move-result-wide p4

    .line 119
    goto :goto_34

    .line 120
    :goto_77
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 122
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/k0;

    .line 125
    move-result-object p1

    .line 126
    iget-object v2, p1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 128
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 131
    :cond_82
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 133
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/k0;

    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroidx/appcompat/widget/k0;->dismiss()V

    .line 140
    return-void
.end method
