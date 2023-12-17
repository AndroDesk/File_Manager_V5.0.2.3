.class Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputTextFilter"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, ""

    .line 10
    if-nez v0, :cond_63

    .line 12
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_15

    .line 18
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-interface {p4, v1, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 44
    move-result p2

    .line 45
    invoke-interface {p4, p6, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_3e

    .line 62
    return-object p1

    .line 63
    :cond_3e
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 65
    invoke-static {p2, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1100(Lmiuix/pickerwidget/widget/NumberPicker;Ljava/lang/String;)I

    .line 68
    move-result p2

    .line 69
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 71
    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 74
    move-result p3

    .line 75
    if-gt p2, p3, :cond_62

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 80
    move-result p1

    .line 81
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 83
    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 86
    move-result p2

    .line 87
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 94
    move-result p2

    .line 95
    if-le p1, p2, :cond_61

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    return-object v0

    .line 99
    :cond_62
    :goto_62
    return-object v2

    .line 100
    :cond_63
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_72

    .line 114
    return-object v2

    .line 115
    :cond_72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-interface {p4, v1, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 123
    move-result-object p3

    .line 124
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 137
    move-result p1

    .line 138
    invoke-interface {p4, p6, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 157
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 159
    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    .line 162
    move-result-object p3

    .line 163
    array-length p4, p3

    .line 164
    :goto_a3
    if-ge v1, p4, :cond_ca

    .line 166
    aget-object p6, p3, v1

    .line 168
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_c7

    .line 178
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 183
    move-result p1

    .line 184
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 187
    move-result p3

    .line 188
    invoke-static {p2, p1, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1300(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 191
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 194
    move-result p1

    .line 195
    invoke-virtual {p6, p5, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 198
    move-result-object p1

    .line 199
    return-object p1

    .line 200
    :cond_c7
    add-int/lit8 v1, v1, 0x1

    .line 202
    goto :goto_a3

    .line 203
    :cond_ca
    return-object v2
.end method

.method public getAcceptedChars()[C
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/pickerwidget/widget/NumberPicker;->access$900()[C

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getInputType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
