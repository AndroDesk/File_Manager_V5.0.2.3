.class Lcom/android/fileexplorer/activity/ViewLargeActivity$3;
.super Ljava/lang/Object;
.source "ViewLargeActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ViewLargeActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$3;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$3;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$800(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    return-void
.end method
