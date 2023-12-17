.class Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$2;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;
.source "MirrorBaseSecondaryDocFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 6
    return-void
.end method
