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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$100(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    move-result-object p2

    const-string p3, "moretag"

    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/activity/AppTagActivity;->startAppFileActivity(Landroid/content/Context;Lcom/android/fileexplorer/dao/file/AppTag;Ljava/lang/String;)V

    return-void
.end method
