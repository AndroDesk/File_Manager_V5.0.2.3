.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;
.super Ljava/lang/Object;
.source "FabMenuFunctionLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$100(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 23
    move-result p1

    .line 24
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;->onItemClick(I)V

    .line 27
    :cond_1a
    return-void
.end method
