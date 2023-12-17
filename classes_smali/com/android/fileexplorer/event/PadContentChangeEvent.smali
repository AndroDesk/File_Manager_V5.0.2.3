.class public Lcom/android/fileexplorer/event/PadContentChangeEvent;
.super Ljava/lang/Object;
.source "PadContentChangeEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isToBackStack:Z

.field public mBundle:Landroid/os/Bundle;

.field public mClassName:Ljava/lang/String;

.field public mPageTitle:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->titleRes:I

    .line 4
    iput-boolean p3, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mBundle:Landroid/os/Bundle;

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;)V
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;I)V
    .registers 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p3, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 11
    iput-object p4, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mBundle:Landroid/os/Bundle;

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mTag:Ljava/lang/String;

    .line 15
    iput p6, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->titleRes:I

    return-void
.end method


# virtual methods
.method public getFragmentClassName()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isPhoneMainFragment()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_27

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->titleRes:I

    .line 9
    const v1, 0x7f110075

    .line 12
    if-ne v0, v1, :cond_14

    .line 14
    const-class v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_14
    const v1, 0x7f1101fe

    .line 24
    if-ne v0, v1, :cond_20

    .line 26
    const-class v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    const-class v0, Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mTag:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 8
    return-object v0
.end method

.method public isPhoneMainFragment()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 3
    const-class v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isRecentFragment()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    .line 3
    const v1, 0x7f110075

    .line 6
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "PadContentChangeEvent[isToBackStack: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ";className:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 19
    const-string v2, "]"

    .line 21
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
