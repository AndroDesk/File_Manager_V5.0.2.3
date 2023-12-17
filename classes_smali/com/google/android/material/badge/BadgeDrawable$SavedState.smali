.class public final Lcom/google/android/material/badge/BadgeDrawable$SavedState;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/badge/BadgeDrawable$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alpha:I

.field private backgroundColor:I

.field private badgeGravity:I

.field private badgeTextColor:I

.field private contentDescriptionExceedsMaxBadgeNumberRes:I

.field private contentDescriptionNumberless:Ljava/lang/CharSequence;

.field private contentDescriptionQuantityStrings:I

.field private horizontalOffset:I

.field private maxCharacterCount:I

.field private number:I

.field private verticalOffset:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState$1;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 4
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    sget v1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 5
    iget-object v0, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    .line 6
    sget v0, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 8
    sget p1, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    .line 9
    sget p1, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_content_description:I

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionExceedsMaxBadgeNumberRes:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 11
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 3
    return p0
.end method

.method public static synthetic access$1002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 3
    return p1
.end method

.method public static synthetic access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    .line 3
    return p0
.end method

.method public static synthetic access$502(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    .line 3
    return p0
.end method

.method public static synthetic access$602(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lcom/google/android/material/badge/BadgeDrawable$SavedState;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 3
    return-object p1
.end method

.method public static synthetic access$900(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    .line 3
    return p0
.end method

.method public static synthetic access$902(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    .line 3
    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 28
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
