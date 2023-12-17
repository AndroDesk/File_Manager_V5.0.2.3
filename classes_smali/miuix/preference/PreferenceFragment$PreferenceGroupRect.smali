.class Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferenceGroupRect"
.end annotation


# instance fields
.field public currentEndtb:[I

.field public currentMovetb:[I

.field public currentPrimetb:[I

.field public endRadioButtonCategory:Z

.field public index:I

.field public nextViewY:I

.field public preViewHY:I

.field public preferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public primeIndex:I

.field public startRadioButtonCategory:Z

.field public final synthetic this$0:Lmiuix/preference/PreferenceFragment;

.field public type:I


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    .line 4
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentEndtb:[I

    .line 5
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentPrimetb:[I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->primeIndex:I

    .line 8
    iput v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    .line 9
    iput v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 10
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 11
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->startRadioButtonCategory:Z

    .line 12
    iput p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public addPreference(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "PreferenceGroupRect{preferenceList="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", currentMovetb="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", currentEndtb="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentEndtb:[I

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", currentPrimetb="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentPrimetb:[I

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", index="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", primeIndex="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->primeIndex:I

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", preViewHY="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", nextViewY="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", end="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    const/16 v1, 0x7d

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method
