.class public final Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/MiuiFreeFormManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiuiFreeFormStackInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public configuration:Landroid/content/res/Configuration;

.field public displayId:I

.field public freeFormScale:F

.field public freeformCornerRadius:F

.field public inPinMode:Z

.field public packageName:Ljava/lang/String;

.field public pinFloatingWindowPos:Landroid/graphics/Rect;

.field public smallWindowBounds:Landroid/graphics/Rect;

.field public stackId:I

.field public userId:I

.field public windowRoundCorner:F

.field public windowScaleX:F

.field public windowScaleY:F

.field public windowState:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo$1;

    .line 3
    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lmiui/app/MiuiFreeFormManager$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInFreeFormMode()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isInMiniFreeFormMode()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    :goto_7
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    move-result v3

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->displayId:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 74
    move-result v2

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 78
    move-result v3

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 82
    move-result v4

    .line 83
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 88
    invoke-static {p1}, Lf1/x;->s(Landroid/os/Parcel;)Z

    .line 91
    move-result v0

    .line 92
    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleX:F

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleY:F

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowRoundCorner:F

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 121
    move-result v2

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 125
    move-result v3

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 129
    move-result v4

    .line 130
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 138
    move-result p1

    .line 139
    iput p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformCornerRadius:F

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 36
    invoke-virtual {p0, v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Stack id="

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bounds="

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " displayId="

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->displayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " windowState="

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " freeFormScale="

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, " smallWindowBounds="

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    const-string p1, " configuration="

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " inPinMode="

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-boolean p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " windowScaleX="

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleX:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " windowScaleY="

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleY:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " windowRoundCorner="

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowRoundCorner:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pinFloatingWindowPos="

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " freeformCornerRadius="

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformCornerRadius:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 8
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 15
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 22
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 29
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->displayId:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 66
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 73
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 80
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 87
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    .line 94
    invoke-static {p1, p2}, Lf1/x;->k(Landroid/os/Parcel;Z)V

    .line 97
    iget p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleX:F

    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 102
    iget p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleY:F

    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 107
    iget p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowRoundCorner:F

    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 112
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 114
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 121
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 128
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 130
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 135
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformCornerRadius:F

    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 145
    return-void
.end method
