.class Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;
.super Ljava/lang/Object;
.source "PhoneAppTagFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 13
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    .line 15
    invoke-static {p2}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$100(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    move-result-object p2

    .line 19
    const-string p3, "moretag"

    .line 21
    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/activity/AppTagActivity;->startAppFileActivity(Landroid/content/Context;Lcom/android/fileexplorer/dao/file/AppTag;Ljava/lang/String;)V

    .line 24
    return-void
.end method
