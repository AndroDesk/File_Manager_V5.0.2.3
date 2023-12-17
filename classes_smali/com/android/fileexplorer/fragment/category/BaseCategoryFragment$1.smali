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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    return-void
.end method
