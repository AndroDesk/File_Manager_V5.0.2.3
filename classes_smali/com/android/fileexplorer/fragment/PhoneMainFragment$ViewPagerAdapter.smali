.class public Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;
.super Landroidx/fragment/app/x;
.source "PhoneMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/PhoneMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    invoke-direct {p0, p2}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->fragments:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public addFragment(ILmiuix/appcompat/app/Fragment;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addFragment(Lmiuix/appcompat/app/Fragment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->fragments:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFragment(I)Lmiuix/appcompat/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->fragments:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 9
    return-object p1
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->getItem(I)Lmiuix/appcompat/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/app/Fragment;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    return-object p1
.end method

.method public removeAllFragment()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;->fragments:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    return-void
.end method
