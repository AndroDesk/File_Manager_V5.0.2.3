.class public final Lz/a;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/a$b;,
        Lz/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lz/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lz/a;->b:I

    .line 7
    iput v0, p0, Lz/a;->c:I

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v1, p0, Lz/a;->d:Landroid/util/SparseArray;

    .line 16
    new-instance v1, Landroid/util/SparseArray;

    .line 18
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object v1, p0, Lz/a;->e:Landroid/util/SparseArray;

    .line 23
    iput-object p2, p0, Lz/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 32
    move-result-object p2

    .line 33
    :try_start_20
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 36
    move-result p3

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_25
    const/4 v2, 0x1

    .line 39
    if-eq p3, v2, :cond_a6

    .line 41
    if-eqz p3, :cond_95

    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq p3, v3, :cond_2f

    .line 46
    goto/16 :goto_98

    .line 48
    :cond_2f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x4

    .line 57
    const/4 v6, 0x3

    .line 58
    sparse-switch v4, :sswitch_data_a8

    .line 61
    goto :goto_6e

    .line 62
    :sswitch_3d
    const-string v2, "Variant"

    .line 64
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_6e

    .line 70
    move v2, v6

    .line 71
    goto :goto_6f

    .line 72
    :sswitch_47
    const-string v2, "layoutDescription"

    .line 74
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p3

    .line 78
    if-eqz p3, :cond_6e

    .line 80
    const/4 v2, 0x0

    .line 81
    goto :goto_6f

    .line 82
    :sswitch_51
    const-string v4, "StateSet"

    .line 84
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_6e

    .line 90
    goto :goto_6f

    .line 91
    :sswitch_5a
    const-string v2, "State"

    .line 93
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p3

    .line 97
    if-eqz p3, :cond_6e

    .line 99
    move v2, v3

    .line 100
    goto :goto_6f

    .line 101
    :sswitch_64
    const-string v2, "ConstraintSet"

    .line 103
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_6e

    .line 109
    move v2, v5

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    :goto_6e
    move v2, v0

    .line 112
    :goto_6f
    if-eq v2, v3, :cond_87

    .line 114
    if-eq v2, v6, :cond_7a

    .line 116
    if-eq v2, v5, :cond_76

    .line 118
    goto :goto_98

    .line 119
    :cond_76
    invoke-virtual {p0, p1, p2}, Lz/a;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 122
    goto :goto_98

    .line 123
    :cond_7a
    new-instance p3, Lz/a$b;

    .line 125
    invoke-direct {p3, p1, p2}, Lz/a$b;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 128
    if-eqz v1, :cond_98

    .line 130
    iget-object v2, v1, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto :goto_98

    .line 136
    :cond_87
    new-instance p3, Lz/a$a;

    .line 138
    invoke-direct {p3, p1, p2}, Lz/a$a;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 141
    iget-object v1, p0, Lz/a;->d:Landroid/util/SparseArray;

    .line 143
    iget v2, p3, Lz/a$a;->a:I

    .line 145
    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    move-object v1, p3

    .line 149
    goto :goto_98

    .line 150
    :cond_95
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 153
    :cond_98
    :goto_98
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 156
    move-result p3
    :try_end_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_9c} :catch_a2
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_9c} :catch_9d

    .line 157
    goto :goto_25

    .line 158
    :catch_9d
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    goto :goto_a6

    .line 163
    :catch_a2
    move-exception p1

    .line 164
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 167
    :cond_a6
    :goto_a6
    return-void

    .line 168
    nop

    .line 169
    :sswitch_data_a8
    .sparse-switch
        -0x50764adb -> :sswitch_64
        0x4c7d471 -> :sswitch_5a
        0x526c4e31 -> :sswitch_51
        0x62ce7272 -> :sswitch_47
        0x7155a865 -> :sswitch_3d
    .end sparse-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 11

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/c;

    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_68

    .line 13
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    if-eqz v3, :cond_65

    .line 23
    if-nez v4, :cond_19

    .line 25
    goto :goto_65

    .line 26
    :cond_19
    const-string v5, "id"

    .line 28
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_65

    .line 34
    const-string v1, "/"

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v1

    .line 40
    const/4 v2, -0x1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v1, :cond_43

    .line 44
    const/16 v1, 0x2f

    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, v3

    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move-result v1

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move v1, v2

    .line 69
    :goto_44
    if-ne v1, v2, :cond_5c

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 74
    move-result v2

    .line 75
    if-le v2, v3, :cond_55

    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    move-result v1

    .line 85
    goto :goto_5c

    .line 86
    :cond_55
    const-string v2, "ConstraintLayoutStates"

    .line 88
    const-string v3, "error in parsing id"

    .line 90
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_5c
    :goto_5c
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 96
    iget-object p1, p0, Lz/a;->e:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    goto :goto_68

    .line 102
    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    .line 104
    goto :goto_a

    .line 105
    :cond_68
    :goto_68
    return-void
.end method

.method public final b(FFI)V
    .registers 8

    .line 1
    iget v0, p0, Lz/a;->b:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, p3, :cond_5b

    .line 6
    if-ne p3, v1, :cond_11

    .line 8
    iget-object p3, p0, Lz/a;->d:Landroid/util/SparseArray;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Lz/a$a;

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    iget-object p3, p0, Lz/a;->d:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lz/a$a;

    .line 26
    :goto_19
    iget v0, p0, Lz/a;->c:I

    .line 28
    if-eq v0, v1, :cond_2c

    .line 30
    iget-object v2, p3, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lz/a$b;

    .line 38
    invoke-virtual {v0, p1, p2}, Lz/a$b;->a(FF)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2c

    .line 44
    return-void

    .line 45
    :cond_2c
    invoke-virtual {p3, p1, p2}, Lz/a$a;->a(FF)I

    .line 48
    move-result p1

    .line 49
    iget p2, p0, Lz/a;->c:I

    .line 51
    if-ne p2, p1, :cond_35

    .line 53
    return-void

    .line 54
    :cond_35
    if-ne p1, v1, :cond_39

    .line 56
    const/4 p2, 0x0

    .line 57
    goto :goto_43

    .line 58
    :cond_39
    iget-object p2, p3, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lz/a$b;

    .line 66
    iget-object p2, p2, Lz/a$b;->f:Landroidx/constraintlayout/widget/c;

    .line 68
    :goto_43
    if-ne p1, v1, :cond_46

    .line 70
    goto :goto_50

    .line 71
    :cond_46
    iget-object p3, p3, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Lz/a$b;

    .line 79
    iget p3, p3, Lz/a$b;->e:I

    .line 81
    :goto_50
    if-nez p2, :cond_53

    .line 83
    return-void

    .line 84
    :cond_53
    iput p1, p0, Lz/a;->c:I

    .line 86
    iget-object p1, p0, Lz/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 88
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 91
    goto :goto_b5

    .line 92
    :cond_5b
    iput p3, p0, Lz/a;->b:I

    .line 94
    iget-object v0, p0, Lz/a;->d:Landroid/util/SparseArray;

    .line 96
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lz/a$a;

    .line 102
    invoke-virtual {v0, p1, p2}, Lz/a$a;->a(FF)I

    .line 105
    move-result v2

    .line 106
    if-ne v2, v1, :cond_6e

    .line 108
    iget-object v3, v0, Lz/a$a;->d:Landroidx/constraintlayout/widget/c;

    .line 110
    goto :goto_78

    .line 111
    :cond_6e
    iget-object v3, v0, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lz/a$b;

    .line 119
    iget-object v3, v3, Lz/a$b;->f:Landroidx/constraintlayout/widget/c;

    .line 121
    :goto_78
    if-ne v2, v1, :cond_7b

    .line 123
    goto :goto_85

    .line 124
    :cond_7b
    iget-object v0, v0, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lz/a$b;

    .line 132
    iget v0, v0, Lz/a$b;->e:I

    .line 134
    :goto_85
    if-nez v3, :cond_ae

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const-string v1, "NO Constraint set found ! id="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string p3, ", dim ="

    .line 151
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    const-string p1, ", "

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    const-string p2, "ConstraintLayoutStates"

    .line 171
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 175
    :cond_ae
    iput v2, p0, Lz/a;->c:I

    .line 177
    iget-object p1, p0, Lz/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 179
    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 182
    :goto_b5
    return-void
.end method
