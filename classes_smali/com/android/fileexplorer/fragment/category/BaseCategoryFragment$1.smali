.class Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$1;
.super Ljava/lang/Object;
.source "BaseCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 6
    return-void
.end method
