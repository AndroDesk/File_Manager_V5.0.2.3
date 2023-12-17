.class public Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;
.super Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;
.source "BaseTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/BaseTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mFragmentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/Fragment;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->mFragmentInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->mTitles:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->mFragmentInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getItem(I)Lmiuix/appcompat/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/app/Fragment;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->mFragmentInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->mTitles:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    return-object p1
.end method
