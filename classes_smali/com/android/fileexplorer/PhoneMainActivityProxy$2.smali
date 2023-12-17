.class Lcom/android/fileexplorer/PhoneMainActivityProxy$2;
.super Ljava/lang/Object;
.source "PhoneMainActivityProxy.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/PhoneMainActivityProxy;->initTab(Lmiuix/appcompat/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public isActionUp:Z

.field public isScroll:Z

.field public final synthetic this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

.field public triggerToNewPage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->triggerToNewPage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5

    const-string v0, "onPageScrollStateChanged state = "

    const-string v1, "PhoneMainActivityProxy"

    invoke-static {v0, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_20

    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->triggerToNewPage:Z

    iget-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    if-nez p1, :cond_1d

    const-string p1, "onPageScrollStateChanged scroll to unScrollable, no actionUp"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {p1, v2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$202(Lcom/android/fileexplorer/PhoneMainActivityProxy;Z)Z

    :cond_1d
    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    goto :goto_3c

    :cond_20
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2d

    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {p1, v2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$202(Lcom/android/fileexplorer/PhoneMainActivityProxy;Z)Z

    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    goto :goto_3c

    :cond_2d
    if-ne p1, v0, :cond_3c

    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$000(Lcom/android/fileexplorer/PhoneMainActivityProxy;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$302(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 5

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$002(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I

    const-string v0, "onPageSelected: position = "

    const-string v1, ", mCurrentIndex = "

    invoke-static {v0, p1, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {v1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$000(Lcom/android/fileexplorer/PhoneMainActivityProxy;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneMainActivityProxy"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->triggerToNewPage:Z

    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$100(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V

    return-void
.end method
