.class Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;
.super Ljava/lang/Object;
.source "MenuSingleLineLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initClick(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;Lcom/android/fileexplorer/view/MenuItemView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

.field public final synthetic val$i:I

.field public final synthetic val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/MenuSingleLineLayout;Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$i:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 3
    iget-boolean v0, v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const-string v0, "MenuSingleLineLayout"

    .line 10
    const-string v1, "onMenuSingleLine click"

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->access$000(Lcom/android/fileexplorer/view/MenuSingleLineLayout;)Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_2b

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 33
    invoke-static {p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->access$000(Lcom/android/fileexplorer/view/MenuSingleLineLayout;)Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 39
    iget v0, v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    .line 41
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;->onItemClick(I)V

    .line 44
    :cond_2b
    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 46
    iget v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$i:I

    .line 48
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->access$100(Lcom/android/fileexplorer/view/MenuSingleLineLayout;I)V

    .line 51
    return-void
.end method
