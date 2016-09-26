.class public Lcom/lzx/iteam/widget/CustomLinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "CustomLinkMovementMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;
    }
.end annotation


# static fields
.field private static final CLICK:I = 0x1

.field private static final DOWN:I = 0x3

.field private static FROM_BELOW:Ljava/lang/Object; = null

.field private static final UP:I = 0x2

.field private static sInstance:Lcom/lzx/iteam/widget/CustomLinkMovementMethod;


# instance fields
.field listener:Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->listener:Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;

    .line 18
    return-void
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 25
    .param p1, "what"    # I
    .param p2, "widget"    # Landroid/widget/TextView;
    .param p3, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    .line 83
    .local v15, "layout":Landroid/text/Layout;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v24

    add-int v19, v23, v24

    .line 84
    .local v19, "padding":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    .line 85
    .local v6, "areatop":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v23

    add-int v23, v23, v6

    sub-int v5, v23, v19

    .line 86
    .local v5, "areabot":I
    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v17

    .line 87
    .local v17, "linetop":I
    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v16

    .line 88
    .local v16, "linebot":I
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 89
    .local v12, "first":I
    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 90
    .local v14, "last":I
    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v14, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    .line 91
    .local v10, "candidates":[Landroid/text/style/ClickableSpan;
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 92
    .local v4, "a":I
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 93
    .local v7, "b":I
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 94
    .local v21, "selStart":I
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 95
    .local v20, "selEnd":I
    if-gez v21, :cond_0

    .line 96
    sget-object v23, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    if-ltz v23, :cond_0

    .line 97
    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v20

    move/from16 v21, v20

    .line 100
    :cond_0
    move/from16 v0, v21

    if-le v0, v14, :cond_1

    const v20, 0x7fffffff

    move/from16 v21, v20

    .line 101
    :cond_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_2

    const/16 v20, -0x1

    move/from16 v21, v20

    .line 102
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 147
    :cond_3
    :goto_0
    const/16 v23, 0x0

    :goto_1
    return v23

    .line 104
    :pswitch_0
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 105
    const/16 v23, 0x0

    goto :goto_1

    .line 107
    :cond_4
    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/ClickableSpan;

    .line 108
    .local v18, "link":[Landroid/text/style/ClickableSpan;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    const/16 v23, 0x0

    goto :goto_1

    .line 109
    :cond_5
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 113
    .end local v18    # "link":[Landroid/text/style/ClickableSpan;
    :pswitch_1
    const/4 v9, -0x1

    .line 114
    .local v9, "beststart":I
    const/4 v8, -0x1

    .line 115
    .local v8, "bestend":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_6

    .line 124
    if-ltz v9, :cond_3

    .line 125
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 126
    const/16 v23, 0x1

    goto :goto_1

    .line 116
    :cond_6
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 117
    .local v11, "end":I
    move/from16 v0, v20

    if-lt v11, v0, :cond_7

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 118
    :cond_7
    if-le v11, v8, :cond_8

    .line 119
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 120
    move v8, v11

    .line 115
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 130
    .end local v8    # "bestend":I
    .end local v9    # "beststart":I
    .end local v11    # "end":I
    .end local v13    # "i":I
    :pswitch_2
    const v9, 0x7fffffff

    .line 131
    .restart local v9    # "beststart":I
    const v8, 0x7fffffff

    .line 132
    .restart local v8    # "bestend":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_9

    .line 141
    const v23, 0x7fffffff

    move/from16 v0, v23

    if-ge v8, v0, :cond_3

    .line 142
    move-object/from16 v0, p3

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 143
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 133
    :cond_9
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 134
    .local v22, "start":I
    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 135
    :cond_a
    move/from16 v0, v22

    if-ge v0, v9, :cond_b

    .line 136
    move/from16 v9, v22

    .line 137
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 132
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->sInstance:Lcom/lzx/iteam/widget/CustomLinkMovementMethod;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;

    invoke-direct {v0}, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->sInstance:Lcom/lzx/iteam/widget/CustomLinkMovementMethod;

    .line 201
    :cond_0
    sget-object v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->sInstance:Lcom/lzx/iteam/widget/CustomLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .prologue
    .line 186
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 187
    sget-object v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 36
    sparse-switch p3, :sswitch_data_0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ScrollingMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 39
    :sswitch_0
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-direct {p0, v0, p1, p2}, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 192
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 156
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    .local v0, "action":I
    if-eq v0, v7, :cond_0

    if-nez v0, :cond_4

    .line 158
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 159
    .local v5, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 160
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    sub-int/2addr v5, v8

    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    sub-int/2addr v6, v8

    .line 162
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    add-int/2addr v5, v8

    .line 163
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    add-int/2addr v6, v8

    .line 164
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 165
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 166
    .local v2, "line":I
    int-to-float v8, v5

    invoke-virtual {v1, v2, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 167
    .local v4, "off":I
    const-class v8, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 168
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v8, v3

    if-eqz v8, :cond_3

    .line 169
    if-ne v0, v7, :cond_2

    .line 170
    aget-object v8, v3, v9

    invoke-virtual {v8, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 182
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    :goto_0
    return v7

    .line 171
    .restart local v1    # "layout":Landroid/text/Layout;
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v4    # "off":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_2
    if-nez v0, :cond_1

    .line 172
    aget-object v8, v3, v9

    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    aget-object v9, v3, v9

    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 177
    if-ne v0, v7, :cond_4

    .line 178
    iget-object v7, p0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->listener:Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->listener:Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;

    invoke-interface {v7}, Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;->onTextClicked()V

    .line 182
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 74
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnTextClickListener(Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;)V
    .locals 0
    .param p1, "listen"    # Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->listener:Lcom/lzx/iteam/widget/CustomLinkMovementMethod$TextClickedListener;

    .line 32
    return-void
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 50
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/lzx/iteam/widget/CustomLinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method
