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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$100(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$2;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;->onItemClick(I)V

    :cond_1a
    return-void
.end method
