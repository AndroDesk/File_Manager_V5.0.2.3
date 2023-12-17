.class Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$1;
.super Ljava/lang/Object;
.source "MirrorBaseTabCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Lmiuix/appcompat/app/Fragment;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;

    .line 3
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 5
    iput-object p1, p2, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 7
    return-void
.end method
