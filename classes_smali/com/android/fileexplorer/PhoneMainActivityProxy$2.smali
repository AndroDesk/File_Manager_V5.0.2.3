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
.method public constructor <init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->triggerToNewPage:Z

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    .line 12
    iput-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    .line 14
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5

    .line 1
    const-string v0, "onPageScrollStateChanged state = "

    .line 3
    const-string v1, "PhoneMainActivityProxy"

    .line 5
    invoke-static {v0, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_20

    .line 12
    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->triggerToNewPage:Z

    .line 14
    iget-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    .line 16
    if-nez p1, :cond_1d

    .line 18
    const-string p1, "onPageScrollStateChanged scroll to unScrollable, no actionUp"

    .line 20
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 27
    invoke-static {p1, v2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$202(Lcom/android/fileexplorer/PhoneMainActivityProxy;Z)Z

    .line 30
    :cond_1d
    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    .line 32
    goto :goto_3c

    .line 33
    :cond_20
    const/4 v1, 0x2

    .line 34
    if-ne p1, v1, :cond_2d

    .line 36
    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 40
    invoke-static {p1, v2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$202(Lcom/android/fileexplorer/PhoneMainActivityProxy;Z)Z

    .line 43
    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    .line 45
    goto :goto_3c

    .line 46
    :cond_2d
    if-ne p1, v0, :cond_3c

    .line 48
    iput-boolean v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isActionUp:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->isScroll:Z

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 54
    invoke-static {p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$000(Lcom/android/fileexplorer/PhoneMainActivityProxy;)I

    .line 57
    move-result v0

    .line 58
    invoke-static {p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$302(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I

    .line 61
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 3
    invoke-static {v0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$002(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I

    .line 6
    const-string v0, "onPageSelected: position = "

    .line 8
    const-string v1, ", mCurrentIndex = "

    .line 10
    invoke-static {v0, p1, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$000(Lcom/android/fileexplorer/PhoneMainActivityProxy;)I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "PhoneMainActivityProxy"

    .line 29
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->triggerToNewPage:Z

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 37
    invoke-static {v0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->access$100(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V

    .line 40
    return-void
.end method
