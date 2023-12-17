.class public abstract Lcom/android/fileexplorer/view/indicator/ProportionTagView;
.super Ljava/lang/Object;
.source "ProportionTagView.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/DrawView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/view/indicator/DrawView;"
    }
.end annotation


# instance fields
.field public mAlpha:I

.field public mContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mPositionX:I

.field public mPositionY:I

.field public mTagMarginStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mAlpha:I

    .line 3
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mContent:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getPositionX()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mPositionX:I

    .line 3
    return v0
.end method

.method public getPositionY()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mPositionY:I

    .line 3
    return v0
.end method

.method public getTagMarginStart()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mTagMarginStart:I

    .line 3
    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mAlpha:I

    .line 3
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mContent:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public setPositionX(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mPositionX:I

    .line 3
    return-void
.end method

.method public setPositionY(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mPositionY:I

    .line 3
    return-void
.end method

.method public setTagMarginStart(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->mTagMarginStart:I

    .line 3
    return-void
.end method
