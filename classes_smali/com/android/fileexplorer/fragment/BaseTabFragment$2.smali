.class Lcom/android/fileexplorer/fragment/BaseTabFragment$2;
.super Ljava/lang/Object;
.source "BaseTabFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/BaseTabFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseTabFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lmiuix/appcompat/app/Fragment;I)V
    .registers 3

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseTabFragment;

    check-cast p1, Lcom/android/fileexplorer/fragment/BaseFragment;

    iput-object p1, p2, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    return-void
.end method
