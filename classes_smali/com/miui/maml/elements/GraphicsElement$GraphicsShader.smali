.class Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
.super Ljava/lang/Object;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GraphicsElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphicsShader"
.end annotation


# instance fields
.field public mColors:[I

.field private mMatrixName:Ljava/lang/String;

.field public mShader:Landroid/graphics/Shader;

.field private mShaderType:I

.field public mStops:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/GraphicsElement$1;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 3
    return-object p1
.end method
