.class Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;
.super Ljava/lang/Object;
.source "DynamicFragmentPagerAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;
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

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V
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

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->this$0:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->clazz:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->args:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->tab:Landroidx/appcompat/app/a$d;

    iput-boolean p6, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->hasActionMenu:Z

    return-void
.end method


# virtual methods
.method public getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
