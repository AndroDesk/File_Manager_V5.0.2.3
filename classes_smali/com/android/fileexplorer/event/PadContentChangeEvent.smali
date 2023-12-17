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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->titleRes:I

    iput-boolean p3, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    iput-object p1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mBundle:Landroid/os/Bundle;

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

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    iput-object p4, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mTag:Ljava/lang/String;

    iput p6, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->titleRes:I

    return-void
.end method


# virtual methods
.method public getFragmentClassName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isPhoneMainFragment()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->titleRes:I

    const v1, 0x7f110075

    if-ne v0, v1, :cond_14

    const-class v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const v1, 0x7f1101fe

    if-ne v0, v1, :cond_20

    const-class v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const-class v0, Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public isPhoneMainFragment()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    const-class v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRecentFragment()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    const v1, 0x7f110075

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "PadContentChangeEvent[isToBackStack: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";className:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
