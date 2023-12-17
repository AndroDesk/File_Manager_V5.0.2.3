.class public Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;
.super Ljava/lang/Object;
.source "FastScrollerStringCapsuleModel.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContent()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;->mContent:Ljava/lang/String;

    .line 3
    return-void
.end method
