.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$State;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final synthetic a:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 3
    const-string v1, "REMOVED"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 11
    new-instance v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 13
    const-string v3, "VISIBLE"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 21
    new-instance v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 23
    const-string v5, "GONE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 31
    new-instance v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 33
    const-string v7, "INVISIBLE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 3

    if-eqz p0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    .line 4
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object p0

    .line 5
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown visibility "

    .line 6
    invoke-static {v1, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_18
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object p0

    .line 9
    :cond_1b
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object p0
.end method

.method public static from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 2
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object p0

    .line 3
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 2

    .line 1
    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 1

    .line 1
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 3
    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 9
    return-object v0
.end method


# virtual methods
.method public applyState(Landroid/view/View;)V
    .registers 7

    .line 1
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$c;->a:[I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "FragmentManager"

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v0, v1, :cond_80

    .line 15
    const-string v1, "SpecialEffectsController: Setting view "

    .line 17
    if-eq v0, v3, :cond_5e

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v0, v4, :cond_3b

    .line 22
    const/4 v4, 0x4

    .line 23
    if-eq v0, v4, :cond_1a

    .line 25
    goto/16 :goto_ad

    .line 27
    :cond_1a
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_37

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " to INVISIBLE"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_37
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    goto :goto_ad

    .line 60
    :cond_3b
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_58

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " to GONE"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_58
    const/16 v0, 0x8

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    goto :goto_ad

    .line 95
    :cond_5e
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_7b

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, " to VISIBLE"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_7b
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    goto :goto_ad

    .line 129
    :cond_80
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    if-eqz v0, :cond_ad

    .line 137
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_aa

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string v3, "SpecialEffectsController: Removing view "

    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v3, " from container "

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_aa
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_ad
    :goto_ad
    return-void
.end method
