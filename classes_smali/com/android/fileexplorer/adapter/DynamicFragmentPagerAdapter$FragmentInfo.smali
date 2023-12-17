.class Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;
.super Ljava/lang/Object;
.source "DynamicFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentInfo"
.end annotation


# instance fields
.field public args:Landroid/os/Bundle;

.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public fragment:Landroidx/fragment/app/Fragment;

.field public hasActionMenu:Z

.field public tab:Landroidx/appcompat/app/a$d;

.field public tag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/appcompat/app/a$d;",
            "Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->this$0:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 13
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    .line 15
    iput-object p5, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroidx/appcompat/app/a$d;

    .line 17
    iput-boolean p6, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-object v0
.end method
