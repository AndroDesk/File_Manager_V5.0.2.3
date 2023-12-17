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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/MenuSingleLineLayout;Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iput-object p2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    iput p3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    iget-boolean v0, v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "MenuSingleLineLayout"

    const-string v1, "onMenuSingleLine click"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-static {p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->access$000(Lcom/android/fileexplorer/view/MenuSingleLineLayout;)Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-static {p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->access$000(Lcom/android/fileexplorer/view/MenuSingleLineLayout;)Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$itemData:Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    iget v0, v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;->onItemClick(I)V

    :cond_2b
    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->this$0:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iget v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;->val$i:I

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->access$100(Lcom/android/fileexplorer/view/MenuSingleLineLayout;I)V

    return-void
.end method
