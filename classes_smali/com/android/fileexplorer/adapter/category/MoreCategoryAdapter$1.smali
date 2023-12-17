.class Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;
.super Ljava/lang/Object;
.source "MoreCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnTouchHelper(Lcom/android/fileexplorer/model/category/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

.field public final synthetic val$item:Lcom/android/fileexplorer/model/category/BaseItem;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->val$item:Lcom/android/fileexplorer/model/category/BaseItem;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$000(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_4a

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_41

    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_39

    .line 22
    const/4 p2, 0x2

    .line 23
    if-eq p1, p2, :cond_1c

    .line 25
    const/4 p2, 0x3

    .line 26
    if-eq p1, p2, :cond_39

    .line 28
    goto :goto_4a

    .line 29
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    move-result-wide p1

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 35
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$100(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)J

    .line 38
    move-result-wide v0

    .line 39
    sub-long/2addr p1, v0

    .line 40
    const-wide/16 v0, 0x64

    .line 42
    cmp-long p1, p1, v0

    .line 44
    if-lez p1, :cond_4a

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 48
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$200(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)Landroidx/recyclerview/widget/f;

    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->val$item:Lcom/android/fileexplorer/model/category/BaseItem;

    .line 54
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 57
    goto :goto_4a

    .line 58
    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 60
    const-wide/16 v0, 0x0

    .line 62
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$102(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;J)J

    .line 65
    goto :goto_4a

    .line 66
    :cond_41
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    move-result-wide v0

    .line 72
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$102(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;J)J

    .line 75
    :cond_4a
    :goto_4a
    const/4 p1, 0x0

    .line 76
    return p1
.end method
