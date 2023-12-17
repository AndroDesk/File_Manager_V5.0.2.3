.class public Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;
.super Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;
.source "PhoneMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/PhoneMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter2"
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-direct {p0, p2, p3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->fragments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFragment(ILmiuix/appcompat/app/Fragment;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->fragments:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addFragment(Lmiuix/appcompat/app/Fragment;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->createFragment(I)Lmiuix/appcompat/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public createFragment(I)Lmiuix/appcompat/app/Fragment;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    return-object p1
.end method

.method public getFragment(I)Lmiuix/appcompat/app/Fragment;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public removeAllFragment()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
