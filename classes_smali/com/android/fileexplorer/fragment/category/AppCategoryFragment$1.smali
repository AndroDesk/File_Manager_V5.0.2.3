.class Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$1;
.super Ljava/lang/Object;
.source "AppCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 3
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->access$000(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;Ljava/lang/String;)V

    .line 12
    return-void
.end method
