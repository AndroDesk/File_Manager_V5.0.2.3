.class Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$2;
.super Ljava/lang/Object;
.source "PadAppCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;->onBack()Z

    return-void
.end method