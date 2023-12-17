.class final Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;
.super Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/AnimatingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimatingDrawableState"
.end annotation


# instance fields
.field private final mAnimIndex:I

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLayerIndex:I

.field private final mPackageName:Ljava/lang/String;

.field private final mResourceManager:Lcom/miui/maml/ResourceManager;

.field private final mUseFancyWhenStatic:Z

.field private final mUseQuietWhenAnim:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    .line 6
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 8
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    .line 14
    iput p6, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    .line 16
    iput p7, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    .line 18
    iput-boolean p8, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    .line 20
    iput-boolean p9, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    .line 22
    return-void
.end method


# virtual methods
.method public createDrawable()Lcom/miui/maml/MamlDrawable;
    .registers 12

    .line 1
    new-instance v10, Lcom/miui/maml/AnimatingDrawable;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 11
    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    .line 13
    iget v6, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    .line 15
    iget v7, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    .line 17
    iget-boolean v8, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    .line 19
    iget-boolean v9, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    .line 21
    move-object v0, v10

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    .line 25
    return-object v10
.end method
